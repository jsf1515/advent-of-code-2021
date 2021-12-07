component {

    function part1(){
        /*
         * 3D array to model the cards
         */
        var cardArray = arrayNew(3);

        /*
         * get the bingo cards from the text inputs
         */
        var cardInputs = fileRead("./day4_cards.txt")
            .listToArray(chr(10))
            .map((element) => {

                /*
                 * cleanup the inputs
                 * remove leading white spaces
                 * change all double spaces to single spaces
                 * break string apart into array with space as delimiter
                 */

                return element
                    .trim()
                    .replace("  "," ","all")
                    .listToArray(" ")
            })
            .map((cardRow) => {

                /*
                 * Turn each card "cell" into a struct of that number,
                 * and a boolean for that cells picked/not picked status
                 */

                return cardRow.map((cardCell) => {
                    return {
                        "number" : cardCell,
                        "picked" : false
                    }
                });
            })
            .each((element,index) => {
                cardArray[ceiling(index/5)].append(element);
            });

        /*
         * Get the input of the numbers as they were pulled from the pot
         */
        var numberPulls = fileRead("./day4_numberPulls.txt").listToArray();

        var winner = false;
        var winningCard = []
        var winningNumber = 0;

        for( pickedNumber in numberPulls ){
            for( card in cardArray ){
                for( cardRow in card ) {
                    
                    rowWinner = true;

                    cardRow.each((element) => {
                        if(winner == false and element.number == pickedNumber){
                            element.picked = true;
                        }

                        if(element.picked == false){
                            rowWinner = false;
                        }
                    });

                    if(rowWinner == true){
                        winner = true;
                        winningCard = card;

                        if(winningNumber == 0){
                            winningNumber = pickedNumber
                        }
                    }
                }

                if( winner == false ){
                    for(x = 1; x<= 5; x++){
                        if( winner == false && card[1][x].picked == true && card[2][x].picked == true && card[3][x].picked == true && card[4][x].picked  == true && card[5][x].picked  == true){
                            winner = true;
                            winningCard = card;
                            winningNumber = pickedNumber
                        }
                    }
                }

            }
        }

        var runningSum = 0;

        for( row in winningCard ){
            for( cell in row ){
                if( cell.picked == false ){
                    runningSum = runningSum + cell.number
                }
            }
        }

        print.line("winning numbe was " & winningNumber);
        print.line("remaining sum was " & runningSum);
        print.line("input code is " & runningSum * winningNumber )

    }
}