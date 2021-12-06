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
        var numberPulls = fileRead("./day4_numberPulls.txt");

    }
}