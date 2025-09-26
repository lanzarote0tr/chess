// board.c
// chess - Lanzarote


#include <stdio.h>
#include <board.h>

void printboard(piece **board) {
    for (int i=0;i<8;++i)
        for (int j=0;j<8;++j)
            printf("%d ", board[i][j]);
        printf("\n");
    return;
}


