//
// Created by David Fernandes on 4/14/2020.
//

#ifndef ASSIGNMENT_2_GAME_INIT_H
#define ASSIGNMENT_2_GAME_INIT_H

#endif //ASSIGNMENT_2_GAME_INIT_H

#define BOARD_SIZE 8
#define PLAYERS_NUM 2

//colors that a piece can have
typedef enum color
{
    RED,
    GREEN
}color;

/*Square types*/
//INVALID- squares that are on the sides and where no piece can be placed
//VALID- squares where it is possible to place a piece or a stack
typedef enum square_type
{
    VALID,
    INVALID
}square_type;

/*Player:*/
//Contains the player names and their corresponding player colours and the number of captured and reserved pieces that they have.
typedef struct player
{
    color player_color;
    char player_name[19];
    int captured;
    int reserved;
}player;

/* A piece:*/
//p_color- The color associated with a piece
//next-This is a pointer to the next pieces to create a stack.
typedef struct piece
{
    color p_color;
    struct piece * next;
}piece;

/* A Square of the board:*/
// type- type of the square (VALID/INVALID)
// stack- the piece or the top piece on the stack
// num_pieces- number of pieces on the square
typedef struct square
{
    square_type type;
    piece * stack;
    int num_pieces;
}square;

//Function to create the players
void initialize_players(player players[PLAYERS_NUM]);

//Function to create the board
void initialize_board(square board[BOARD_SIZE][BOARD_SIZE]);

//Set Empty Squares (with no pieces/stacks)
void set_empty(square * s);

//Set Invalid Squares (where it is not possible to place stacks)
void set_invalid(square * s);

//Set squares with a RED piece
void set_red(square * s);

//Set squares  with a GREEN piece
void set_green(square * s);