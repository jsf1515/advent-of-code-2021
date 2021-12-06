component {

    function part1(){
        /*
         * 3D array to model the cards
         */
        var cardArray = arrayNew(3);

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
            .each((element,index) => {

                /*
                 * build up a the 3D array
                 */

                cardArray[ceiling(index/5)].append(element);
            });

        var numberPulls = fileRead("./day4_numberPulls.txt");


    }
}