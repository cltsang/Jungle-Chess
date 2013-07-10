#include <ncurses.h>
#include <string.h>
#include <stdlib.h>

#define PLAYER1 1
#define PLAYER2 2
int turn;

struct CHESS{
	int player;
	char name;
	bool isAlive;
	int y;
	int x;
};

struct CHESS player1[8];
struct CHESS player2[8];

int cursorx, cursory;

int input;

struct CHESS *selectedPiece;

void initializeNcurses(){
	initscr();
	curs_set(0);
	cbreak();
	noecho();
	keypad(stdscr, true);
	start_color();
	init_pair(1, COLOR_BLUE, COLOR_WHITE); // PLAYER1's chess
	init_pair(2, COLOR_RED, COLOR_WHITE); // PLAYER2's chess
	init_pair(3, COLOR_BLACK, COLOR_WHITE); // chess board
	init_pair(4, COLOR_WHITE, COLOR_BLUE); // PLAYER1's chess selected
	init_pair(5, COLOR_WHITE, COLOR_RED); // PLAYER2's chess selected
	init_pair(6, COLOR_WHITE, COLOR_BLACK); // chess board highlighted
}

void drawMarkings(){
	int y, x;
	// the traps
	mvprintw(3, 13, "%s", "###");
	mvprintw(3, 21, "%s", "###");
	mvprintw(5, 17, "%s", "###");
	mvprintw(19, 13, "%s", "###");
	mvprintw(19, 21, "%s", "###");
	mvprintw(17, 17, "%s", "###");
	// the dens
	mvprintw(3, 18, "%c", 'O');
	mvprintw(19, 18, "%c", 'O');
	// the rivers
	for(y=9; y<=13; y+=2)
		for(x=9; x<=25; x+=4)
			if(x != 17)
				mvprintw(y, x, "%s", "~~~");
}

void drawChessBoard(){
  	attron(COLOR_PAIR(3));
	int y, x, count=1;
	// the board
	for(y=0; y<23; y++)
		for(x=0; x<35; x++)
			mvaddch(y, x, ' ');
	// the upper-most y
	mvprintw(0, 0, "      1   2   3   4   5   6   7    ");
	// the left-most xumn
	for(y=3; y<20; y+=2)
		mvprintw(y, 0, "%d", count++);
	// horizontal outter border
	for(x=3; x<34; x++){
		mvaddch(1, x, ACS_HLINE);
		mvaddch(21, x, ACS_HLINE);
	}
	// vertical outter border
	for(y=1; y<21; y++){
		mvaddch(y, 2, ACS_VLINE);
		mvaddch(y, 34, ACS_VLINE);
	}
	// the horizontal lines
	for(y=2; y<21; y+=2)
		for(x=4; x<33; x++)
			mvaddch(y, x, '-');
	// the vertical lines
	for(y=3; y<20; y++)
		for(x=4; x<33; x+=4)
			mvaddch(y, x, '|');
	
	// cross
	for(y=4; y<=18; y+=2)
		for(x=8; x<=28; x+=4)
			mvaddch(y, x, ACS_PLUS);
	// horizontal edges
	for(x=8; x<=28; x+=4){
		mvaddch(2, x, ACS_TTEE);
		mvaddch(20, x, ACS_BTEE);
	}
	
	// vertical edges
	for(y=4; y<=20; y+=4){
		mvaddch(y, 4, ACS_LTEE);
		mvaddch(y, 32, ACS_RTEE);
	}
	
	// the for inner corners
	mvaddch(2, 4, ACS_ULCORNER);
	mvaddch(2, 32, ACS_URCORNER);
	mvaddch(20, 4, ACS_LLCORNER);
	mvaddch(20, 32, ACS_LRCORNER);
	// the four outter corners
	mvaddch(1, 2, ACS_ULCORNER);
	mvaddch(1, 34, ACS_URCORNER);
	mvaddch(21, 2, ACS_LLCORNER);
	mvaddch(21, 34, ACS_LRCORNER);
	// the traps, dens and rivers
	drawMarkings();
	move(19, 18);
	attroff(COLOR_PAIR(3));
}

struct CHESS *chessPieceAt(int y, int x){
	int count;
	for(count=0; count<8; count++){
		if(player1[count].isAlive)
			if(player1[count].y==y && player1[count].x==x)
				return (player1+count);
	}
	for(count=0; count<8; count++){
		if(player2[count].isAlive)
			if(player2[count].y==y && player2[count].x==x)
				return (player2+count);
	}
	// no chess on the spot
	return NULL;
}

bool hasChess(int y, int x){
	if(chessPieceAt(y, x) == NULL)
		return false;
	else
		return true;
}

void displayMessage(char *msg){
	int x;
	attron(COLOR_PAIR(3));
	mvprintw(23, 0, "%s", msg);
	for(x=strlen(msg); x<35; x++)
		mvaddch(23, x, ' ');
	refresh();
}

int cursorYCor(){
	return 3 + (cursory - 1) * 2;
}

int cursorXCor(){
	return 6 + (cursorx - 1) * 4;
}

void drawChessPieces(){
	int count;
	for(count=0; count<8; count++){
		if(player1[count].isAlive){
			attron(COLOR_PAIR(1));
			mvaddch(player1[count].y, player1[count].x, player1[count].name);
		}
		if(player2[count].isAlive){
			attron(COLOR_PAIR(2));
			mvaddch(player2[count].y, player2[count].x, player2[count].name);
		}
	}
	if(selectedPiece != NULL)
		mvchgat(selectedPiece->y, selectedPiece->x, 1, A_REVERSE, selectedPiece->player, NULL);
}

void highlightHover(){
	int y, x;
	attron(COLOR_PAIR(3));
	attron(A_REVERSE);
	for(y=cursory-1; y<=cursory+1; y++)
		for(x=cursorx-2; x<=cursorx+2; x++){
			move(y, x);
			char c = inch();
			if(c == 'l')
				mvaddch(y, x, ACS_ULCORNER);
			else if(c == 'n')
				mvaddch(y, x, ACS_PLUS);
			else if(c == 'm')
				mvaddch(y, x, ACS_LLCORNER);
			else if(c == 'k')
				mvaddch(y, x, ACS_URCORNER);
			else if(c == 'j')
				mvaddch(y, x, ACS_LRCORNER);
			else if(c == 'w')
				mvaddch(y, x, ACS_TTEE);
			else if(c == 'v')
				mvaddch(y, x, ACS_BTEE);
			else if(c == 't')
				mvaddch(y, x, ACS_LTEE);
			else if(c == 'u')
				mvaddch(y, x, ACS_RTEE);
			else
				mvaddch(y, x, c);
		}
	attroff(A_REVERSE);
		
	//for(y=cursory-1; y<=cursory+1; y++)
	//	mvchgat(y, cursorx-2, 5, A_REVERSE, 3, NULL);
}

// on the inputted coordinate is a river
bool isRiver(int y, int x){
	if((y==9 && x==10) || (y==9 && x==14) || (y==9 && x==22) || (y==9 && x==26))
		return true;
	if((y==11 && x==10) || (y==11 && x==14) || (y==11 && x==22) || (y==11 && x==26))
		return true;
	if((y==13 && x==10) || (y==13 && x==14) || (y==13 && x==22) || (y==13 && x==26))
		return true;
	return false;
}

void handleCursorMovement(){
	switch(input){
		case KEY_UP:
			if(cursory - 2 > 2)
				cursory = cursory - 2;
			break;
		case KEY_DOWN:
			if(cursory + 2 < 20)
				cursory = cursory + 2;
			break;
		case KEY_LEFT:
			if(cursorx - 4 > 4)
				cursorx = cursorx - 4;
			break;
		case KEY_RIGHT:
			if(cursorx + 4 < 32)
				cursorx = cursorx + 4;
			break;
		default:
			break;
	}
}

// handling picking up and dropping 
void handleSelection(){
	char buff[34];
	if(input != ' ')
		return;
	// drop the current selection
	if(selectedPiece != NULL){
		if(selectedPiece->y==cursory && selectedPiece->x==cursorx){
			sprintf(buff, "Player %d dropped the %c", turn, selectedPiece->name);
			selectedPiece = NULL;
			displayMessage(buff);
		}
	}
	// pick up a chess piece
	else if(hasChess(cursory, cursorx)){
		struct CHESS *chess = chessPieceAt(cursory, cursorx);
		if(chess->player == turn){
			selectedPiece = chessPieceAt(cursory, cursorx);
			sprintf(buff, "Player %d  picked up %c", turn, selectedPiece->name);
			displayMessage(buff);
		}
		else
			displayMessage("opponent's chess, pick again");
	}
}

void refreshDisplay(){
	drawChessBoard();
	highlightHover();
	drawChessPieces();
}

// change turn to another player, or a specified player
void changeTurn(int newTurn){
	char msg[34];
	if(newTurn <= 0){
		if(turn == PLAYER1)
			turn = PLAYER2;
		else if(turn == PLAYER2)
			turn = PLAYER1;
	}
	else
		turn = newTurn;
	sprintf(msg, "Player %d, its your turn", turn);
	displayMessage(msg);
}

bool noConflictWithMyChess(char *msg){
	struct CHESS *chess = chessPieceAt(cursory, cursorx);
	bool returnValue;
	// no chess at all on cursor spot
	if(chess == NULL)
		return true;
	// the chess does not belong to the player
	if(chess->player != turn)
		return true;
	sprintf(msg, "cannot step on your chess");
	return false;
}

bool canStepOnRiver(char *msg){
	if(selectedPiece == NULL)
		return true;
	// check to see if the cursor is in river
	if(isRiver(cursory, cursorx) == false)
		return true;

	if(selectedPiece->name == 'R')
		return true;
	sprintf(msg, "%c cannot step on river", selectedPiece->name);
	return false;
}

// the chess piece has entered a trap on its side
bool isPromoted(struct CHESS *chess){
	if(chess == NULL)
		return false;
	if(chess->player == PLAYER1){
		if((chess->y==19 && chess->x==14) || (chess->y==17 && chess->x==18) || (chess->y==19 && chess->x==22))
			return true;
	}
	else if(chess->player == PLAYER2){
		if((chess->y==3 && chess->x==14) || (chess->y==5 && chess->x==18) || (chess->y==3 && chess->x==22))
			return true;
	}
	return false;
}

// the chess piece has entered a trap on opponent's side
bool isDemoted(struct CHESS *chess){
	if(chess == NULL)
		return false;
	if(chess->player == PLAYER1){
		if((chess->y==3 && chess->x==14) || (chess->y==5 && chess->x==18) || (chess->y==3 && chess->x==22))
			return true;
	}
	else if(chess->player == PLAYER2){
		if((chess->y==19 && chess->x==14) || (chess->y==17 && chess->x==18) || (chess->y==19 && chess->x==22))
			return true;
	}
	return false;
}

bool canCapture(char *msg){
	struct CHESS *target = chessPieceAt(cursory, cursorx);
	if(target == NULL || selectedPiece == NULL)
		return true;
	char predator = selectedPiece->name;
	char prey = target->name;


	// the target or the selected piece is in player's trap 
	if(isDemoted(target) || isPromoted(selectedPiece))
		return true;
	// the selected piece is in opponent's trap
	if(isDemoted(selectedPiece)){
		sprintf(msg, "Cannot capture in a trap", predator, prey);
		return false;
	}

	// target is in the river and the selected chess is not a rat
	if(isRiver(target->y, target->x) && selectedPiece->name!='R'){
		sprintf(msg, "%c cannot capture a %c in river", predator, prey);
		return false;
	}

	switch(predator){
		case 'E':
			if(prey=='E'||prey=='L'||prey=='T'||prey=='J'||prey=='W'||prey=='D'||prey=='C')
				return true;
			break;
		case 'L':
			if(prey=='L'||prey=='T'||prey=='J'||prey=='W'||prey=='D'||prey=='C')
				return true;
			if(prey=='R' && isRiver(target->y, target->x)==false)
				return true;
			break;
		case 'T':
			if(prey=='T'||prey=='J'||prey=='W'||prey=='D'||prey=='C'||prey=='R')
				return true;
			break;
		case 'J':
			if(prey=='J'||prey=='W'||prey=='D'||prey=='C'||prey=='R')
				return true;
			break;
		case 'W':
			if(prey=='W'||prey=='D'||prey=='C'||prey=='R')
				return true;
			break;
		case 'D':
			if(prey=='D'||prey=='C'||prey=='R')
				return true;
			break;
		case 'C':
			if(prey=='C'||prey=='R')
				return true;
			break;
		case 'R':
			if(prey=='R')
				return true;
			// rat cannot capture elephant if it is in the river
			if(prey=='E' && isRiver(selectedPiece->y, selectedPiece->x)==false)
				return true;
			break;
	}
	sprintf(msg, "%c cannot capture an %c", predator, prey);
	return false;
}

// check if the player intend to move the chess to his own den
bool notInSelfDen(char *msg){
	if(turn == PLAYER1)
		if(cursory!=19 || cursorx!=18)
			return true;
	if(turn == PLAYER2)
		if(cursory!=3 || cursorx!=18)
			return true;
	sprintf(msg, "Cannot move to your own den");
	return false;
}

bool intendToCrossRiver(){
	// on the horizontal verge of rivers
	if(selectedPiece->x!=6 && selectedPiece->x!=18 && selectedPiece->x!=30){
		// vertically down
		if(selectedPiece->y==7 && cursory==15 && selectedPiece->x==cursorx)
			return true;
		// vertically up
		if(selectedPiece->y==15 && cursory==7 && selectedPiece->x==cursorx)
			return true;
	}
	// on the vertical verge of rivers
	if(selectedPiece->y==9 || selectedPiece->y==11 || selectedPiece->y==13){
		// horizontally left to middle
		if(selectedPiece->x==6 && cursorx==18 && selectedPiece->y==cursory)
			return true;
		// horizontally middle to right
		if(selectedPiece->x==18 && cursorx==30 && selectedPiece->y==cursory)
			return true;
		// horizontally right to middle
		if(selectedPiece->x==30 && cursorx==18 && selectedPiece->y==cursory)
			return true;
		// horizontally middle to left
		if(selectedPiece->x==18 && cursorx==6 && selectedPiece->y==cursory)
			return true;
	}
	return false;
}

bool mouseInTheWayCrossRiver(){
	// vertical case
	if(selectedPiece->x!=6 && selectedPiece->x!=18 && selectedPiece->x!=30){
		// player1's mouse in the same column
		if(player1[7].x==selectedPiece->x){
			// player1's mouse is in river
			if(player1[7].y>=9 && player1[7].y<=13)
				return true;
		}
		// player2's mouse in the same column
		if(player2[7].x==selectedPiece->x){
			// player2's mouse is in river
			if(player2[7].y>=9 && player2[7].y<=13)
				return true;
		}
	}
	// horizontal case
	if(selectedPiece->y==9 || selectedPiece->y==11 || selectedPiece->y==13){
		// player1's mouse in the same row
		if(player1[7].y==selectedPiece->y){
			// player1's mouse is in river
			if(player1[7].x==10 || player1[7].x==14 || player1[7].x==22 || player1[7].x==26)
				// the same river
				if(abs(player1[7].x-selectedPiece->x) <= 8)
					return true;
		}
		// player2's mouse in the same row
		if(player2[7].y==selectedPiece->y){
			// player2's mouse is in river
			if(player2[7].x==10 || player2[7].x==14 || player2[7].x==22 || player2[7].x==26)
				// the same river
				if(abs(player2[7].x-selectedPiece->x) <= 8)
					return true;
		}
	}
	return false;
}

// check if the target place is too far away
bool isReachable(char *msg){
	// move vertically one step
	if((abs(selectedPiece->y - cursory)<=2) && selectedPiece->x==cursorx)
		return true;
	// move horizontally one step
	if((abs(selectedPiece->x - cursorx)<=4) && selectedPiece->y==cursory)
		return true;
	// Tiger and Lion can jump acroww rivers
	if(selectedPiece->name=='L' || selectedPiece->name=='T'){
		if(intendToCrossRiver())
			if(!mouseInTheWayCrossRiver())
				return true;
	}

	sprintf(msg, "Cannot move that far");
	return false;
}

// check conditions to verify whether the move is valid
bool theMoveIsValid(bool (**conditions)(), int numberOfConditions){
	int count;
	// if currently no chess is picked up, then there is no need to verify
	if(selectedPiece == NULL)
		return false;
	// if the input is space, then there is no need to verify
	if(input != ' ')
		return false;
	// if the dropping is handled by handleSelection called by runGame
	if(cursory == selectedPiece->y && cursorx == selectedPiece->x)
		return false;
	// check all conditions
	for(count=0; count<numberOfConditions; count++){
		char msg[34];
		bool valid = (*conditions[count])(msg);
		if(!valid){
			displayMessage(msg);
			return false;
		}
	}
	return true;
}

// if there is overlaping pieces, remove the opponent's
void handleCapture(){
	int count1, count2;
	struct CHESS *player1sPiece = NULL, *player2sPiece = NULL;
	for(count1=0; count1<8; count1++)
		for(count2=0; count2<8; count2++)
			if(player1[count1].isAlive && player2[count2].isAlive)
				if(player1[count1].y==player2[count2].y && player1[count1].x==player2[count2].x){
					if(turn == PLAYER1)
						player2[count2].isAlive = false;
					else if(turn == PLAYER2)
						player1[count1].isAlive = false;
					return;
				}
}

bool gameEnded(){
	int count;
	if(input=='q' || input=='Q'){
		displayMessage("Game exited, type to exit");
		return true;
	}
	for(count=0; count<8; count++){
		char msg[34];
		if(player1[count].y==3 && player1[count].x==18){
			displayMessage("Player 1 wins, type to exit");
			return true;
		}
		if(player2[count].y==19 && player2[count].x==18){
			displayMessage("Player 2 wins, type to exit");
			return true;
		}
	}
	return false;
}

// register condition checkers
int initializeConditionCheckers(bool (**conditions)(char *)){
	int count = 0;
	//conditions = malloc(sizeof(bool(*)()) * 1);
	conditions[count++] = &noConflictWithMyChess;
	conditions[count++] = &canCapture;
	conditions[count++] = &canStepOnRiver;
	conditions[count++] = &notInSelfDen;
	conditions[count++] = &isReachable;
	return count;
}
		
// main game flow
void runGame(){
	bool (*conditions[5])(char *);
	int numberOfConditions = initializeConditionCheckers(conditions);
	cursory = 3;
	cursorx = 6;
	input = '\0';
	selectedPiece = NULL;
	refreshDisplay();
	changeTurn(PLAYER1);
	while(true){
		if(gameEnded()){
			getch();
			return;
		}
		input = getch();
		handleCursorMovement();
		handleSelection();
		// drop the piece at spot if the move is valid
		if(theMoveIsValid(conditions, numberOfConditions)){
			char msg[34];
			sprintf(msg, "Moved %c", selectedPiece->name);
			displayMessage(msg);
			selectedPiece->y = cursory;
			selectedPiece->x = cursorx;
			selectedPiece = NULL;
			handleCapture();
			changeTurn(0);
		}
		refreshDisplay();
	}
	//free(conditions);
}

// initialize a CHESS struct variable
void initializeCHESS(struct CHESS* piece, int player, char name, bool isAlive, int y, int x){
	piece->player = player;
	piece->name = name;
	piece->isAlive = isAlive;
	piece->y = y;
	piece->x = x;
}

// initialize all chess
void initializeChessPieces(){
	// player1's
	initializeCHESS(&(player1[0]), 1, 'E', true, 15, 6);
	initializeCHESS(&(player1[1]), 1, 'L', true, 19, 30);
	initializeCHESS(&(player1[2]), 1, 'T', true, 19, 6);
	initializeCHESS(&(player1[3]), 1, 'J', true, 15, 22);
	initializeCHESS(&(player1[4]), 1, 'W', true, 15, 14);
	initializeCHESS(&(player1[5]), 1, 'D', true, 17, 26);
	initializeCHESS(&(player1[6]), 1, 'C', true, 17, 10);
	initializeCHESS(&(player1[7]), 1, 'R', true, 15, 30);
	// player2's
	initializeCHESS(&(player2[0]), 2, 'E', true, 7, 30);
	initializeCHESS(&(player2[1]), 2, 'L', true, 3, 6);
	initializeCHESS(&(player2[2]), 2, 'T', true, 3, 30);
	initializeCHESS(&(player2[3]), 2, 'J', true, 7, 14);
	initializeCHESS(&(player2[4]), 2, 'W', true, 7, 22);
	initializeCHESS(&(player2[5]), 2, 'D', true, 5, 10);
	initializeCHESS(&(player2[6]), 2, 'C', true, 5, 26);
	initializeCHESS(&(player2[7]), 2, 'R', true, 7, 6);
}

int main(){
	initializeNcurses();
	initializeChessPieces();
	runGame();
	endwin();
	return 0;
}
