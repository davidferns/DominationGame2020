//
// Created by David Fernandes on 4/14/2020.
//
#include <stdio.h>
#include <stdlib.h>
#include<stdbool.h>
#include "cmake-build-debug/game_init.h"
#include <string.h>

void initialize_players(player players[PLAYERS_NUM])
{

    char choice;
    char name[19];
    bool checked=false;
    for(int i = 0; i < 2; i++) {
        printf("Player %d:\n", i + 1);
        printf("Enter your name:");
        scanf("%s", name);
        strcpy(players[i].player_name, name);
        players[i].captured = 0;
        players[i].reserved = 0;
        if(checked==false) {
            printf("Choose a color:\nR for red\nG for green\n");
            scanf("%s", &choice);
            if (choice == 'R' || choice == 'r')
            {
                players[i].player_color = RED;
                players[i + 1].player_color = GREEN;
                checked =true;
            } else if (choice == 'G' || choice == 'g')
            {
                players[i].player_color = GREEN;
                players[i + 1].player_color = RED;
                checked=true;
            } else
            {
                printf("\nInvalid Colour");
                exit(0);
            }
        }

    }

}

//Set Invalid Squares (where it is not possible to place stacks)
void set_invalid(square * s){
    s->type = INVALID;
    s->stack = NULL;
    s->num_pieces = 0;
}

//Set Empty Squares (with no pieces/stacks)
void set_empty(square * s){
    s->type = VALID;
    s->stack = NULL;
    s->num_pieces = 0;
}

//Set squares  with a GREEN piece
void set_green(square * s){
    s->type = VALID;
    s->stack = (piece *) malloc (sizeof(piece));
    s->stack->p_color = GREEN;
    s->stack->next = NULL;
    s->num_pieces = 1;
}

//Set squares with a RED piece
void set_red(square * s){
    s->type = VALID;
    s->stack = (piece *) malloc (sizeof(piece));
    s->stack->p_color = RED;
    s->stack->next = NULL;
    s->num_pieces = 1;
}

//initializes the board
void initialize_board(square board [BOARD_SIZE][BOARD_SIZE]){

    for(int i=0; i< BOARD_SIZE; i++){
        for(int j=0; j< BOARD_SIZE; j++){
            //invalid squares
            if((i==0 && (j==0 || j==1 || j==6 || j==7)) ||
               (i==1 && (j==0 || j==7)) ||
               (i==6 && (j==0 || j==7)) ||
               (i==7 && (j==0 || j==1 || j==6 || j==7)))
                set_invalid(&board[i][j]);

            else{
                //squares with no pieces
                if(i==0 || i ==7 || j==0 || j == 7)
                    set_empty(&board[i][j]);
                else{
                    //squares with red pieces
                    if((i%2 == 1 && (j < 3 || j> 4)) ||
                       (i%2 == 0 && (j == 3 || j==4)))
                        set_red(&board[i][j]);
                        //green squares
                    else set_green(&board[i][j]);
                }
            }
        }


    }


}
