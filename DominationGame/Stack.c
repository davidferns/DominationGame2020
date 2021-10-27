//
// Created by David Fernandes on 4/25/2020.
//



#include "Stack.h"

void push_reserved(color new, square * s){
    piece *curr = malloc(sizeof(piece));
    curr->p_color = new;
    curr->next = s->stack;
    s->stack = curr;
    s->num_pieces++;
}

struct piece * push(color new, square * s){
    struct piece *curr = s->stack;
    s->stack = malloc(sizeof(piece));
    s->stack->p_color = new;
    s->stack->next = curr;
    return s->stack;
}

struct piece * pop(struct square *top){
    struct piece *curr = top->stack;
    while(curr->next->next!=NULL)
    {
        curr=curr->next;
    }
    struct piece *last=curr->next;
    curr->next=NULL;
    top->num_pieces--;
    return last;

}
struct square * push_Stack(struct square *square1, struct square *square2){
    // This function stacks top2 on top of stack top1


    piece *stack1 = square1->stack;
    piece *stack2 = square2->stack;


    //set the new_stackPtr = square1 stack
    piece *new_stackPtr = square1->stack;
    piece *currentPiece = new_stackPtr;
    //loop through and assign the elements of stack1 to the variable new_stackPtr
    while (new_stackPtr->next != NULL){
        new_stackPtr = new_stackPtr->next;
    } //Move till the end of the pointer new_stackPtr

    new_stackPtr->next = stack2; //add the next pointer to point to secondStack

    square2->stack = currentPiece;
    // '' This is needed to add the last piece of the stack to square2
    //square2->stack = push(currentPiece->p_color, square2->stack);

    square2->num_pieces = get_stack_count(square2->stack);

    //Emtpy the moved square, square1
    set_empty(square1);
    return square2;


}
void printStack(struct piece *stack,char *string){
    printf("%s ",string);

    //There is only one piece in the stack
    if(stack!=NULL && stack->next == NULL){
        printf("%d\n",stack->p_color);
        return;
    }

    while(stack->next != NULL){
        printf("%d",stack->p_color);
        stack = stack->next;
    }
    printf("%d",stack->p_color);

    printf("\n");

}
int get_stack_count(piece *n_stack){
    //This function returns the amount of pieces in a stack n_stack
    int count = 0;
    while(n_stack != NULL){
        n_stack = n_stack->next;
        count++;
    }

    return count;
}
void move(square board [BOARD_SIZE][BOARD_SIZE], player players[PLAYERS_NUM]){
    int row,column, valid;
    char reserved_choice='n';
    while(players[0].captured != 18 || players[1].captured != 18){

        for(int i = 0; i<PLAYERS_NUM; i++){
            if(players[i].reserved>0)
            {
                printf("%s would you like to place a reserved piece?(Y for yes, N for no)",players[i].player_name);
                getchar();
                scanf("%c",&reserved_choice);
            }
            if(reserved_choice=='y'||reserved_choice=='Y')
            {
                do {
                    printf("%s Please enter the row and column number of the position where you would like to place the piece: ",
                           players[i].player_name);
                    printf("Row: ");
                    scanf("%d",&row);
                    printf("Column: ");
                    scanf("%d",&column);
                    if (board[row][column].type == INVALID)
                    {
                        printf("please enter a valid stack\n\n");
                        valid = 0;
                        print_board(board);
                    } else
                        valid = 1;
                } while (valid == 0);

                printf("%s:\n",players[i].player_name);
                printf("Captured: %d\nReserved: %d\n",players[i].captured,players[i].reserved);

                push_reserved(players[i].player_color,&board[row][column]);
                players[i].reserved--;

                printf("%s:\n",players[i].player_name);
                printf("Captured: %d\nNew Reserved: %d\n",players[i].captured,players[i].reserved);
                print_board(board);

            }
            else {

                do {
                    printf("%s Please enter the row and column number of the stack or piece you want to move:\n",players[i].player_name);
                    printf("Row: ");
                    scanf("%d",&row);
                    printf("Column: ");
                    scanf("%d",&column);

                    if (board[row][column].type == INVALID || board[row][column].stack == NULL ||board[row][column].stack->p_color != players[i].player_color)
                    {
                        printf("please enter a valid stack\n\n");
                        valid = 0;
                        print_board(board);
                    } else
                        valid = 1;
                } while (valid == 0);

                int new_row = row;
                int new_column = column;
                int decition;
                int moves = board[row][column].num_pieces;
                print_board(board);


                for (int k = 0; k < moves; k++) {
                    printf("Where would you like to move your piece?\n");
                    printf("1. Up\n2. Down\n3.Left\n4. Right\n");

                    printf("Choice: ");
                    scanf("%d", &decition);
                    switch (decition) {
                        case 1:
                            new_row -= 1;
                            break;
                        case 2:
                            new_row += 1;
                            break;
                        case 3:
                            new_column -= 1;
                            break;
                        case 4:
                            new_column += 1;
                            break;
                        default :
                            printf("Piece cannot be moved to that position\n");
                            exit(0);
                    }
                    if (new_row > 7 || new_row < 0 || new_column > 7 || new_column < 0 ||
                        board[new_row][new_column].type == INVALID) {
                        printf("Try again as pieces cannot be moved to invalid spaces\n");
                        exit(1);
                    }

                }

                board[new_row][new_column] = *push_Stack(&board[row][column], &board[new_row][new_column]);
                while (board[new_row][new_column].num_pieces > 5) {
                    struct piece *last = pop(&board[new_row][new_column]);
                    if (last->p_color == players[i].player_color) {
                        players[i].reserved++;
                    } else
                        players[i].captured++;
                }

                printf("%s:\n",players[i].player_name);
                printf("Captured: %d\nReserved: %d\n",players[i].captured,players[i].reserved);
                print_board(board);
            }


        }

    }

}
