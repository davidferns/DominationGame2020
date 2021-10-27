//
// Created by David Fernandes on 4/14/2020.
//


#include <stdio.h>
#include "input_output.h"

/* FUnction to print the board:
 * Invalid Squares are printed as | - |
 * Valid empty squares are printed as |   |
 * Valid squares with a GREEN piece are printed as | G 'number' | and the number of pieces in that square
 * Valid squares with a RED piece are printed as | R'number' | and the number of pieces in that square */
void print_board(square board[BOARD_SIZE][BOARD_SIZE])
{
    printf("****** The Board ******\n");
    for (int i = 0; i < BOARD_SIZE; i++)
    {
        for (int j = 0; j < BOARD_SIZE; j++)
        {
            if (board[i][j].type == VALID)
            {
                if (board[i][j].stack == NULL)
                    printf("|   %d   ", board[i][j].num_pieces);
                else
                {
                    if (board[i][j].stack->p_color == GREEN)
                        printf("|  G %d  ", board[i][j].num_pieces);
                    else
                        printf("|  R %d  ", board[i][j].num_pieces);
                }
            }
            else
                printf("|   -   ");
        }
        printf("|\n");
    }
}
