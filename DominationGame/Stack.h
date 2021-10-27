//
// Created by David Fernandes on 4/25/2020.
//

#ifndef ASSIGNMENT_2_STACK_H
#define ASSIGNMENT_2_STACK_H

#endif //ASSIGNMENT_2_STACK_H

#include <stdio.h>
#include <stdlib.h>
#include "cmake-build-debug/game_init.h"


void move(square board [BOARD_SIZE][BOARD_SIZE], player players[PLAYERS_NUM]);
void print_board(square board[BOARD_SIZE][BOARD_SIZE]);
int get_stack_count(piece *n_stack);
void printStack(struct piece *stack,char *string);


