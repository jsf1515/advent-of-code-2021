component {
    
    function run(){
        //var inputs = [16,1,2,0,4,2,7,1,2,14];

        var inputs = fileRead("./inputs.txt").listToArray().map((element) => {
            return int(element);
        });

        var fuelUsed = [];

        for(startDepth in inputs){
            fuelUsed.append( inputs
                .map((endDepth) => {

                    /*
                     * think back to math class and look at the example
                     * if we at 16 and want to move to 5, thats 11 total moves
                     * and the fuel cost grows by 1 for each move
                     * so 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 + 11
                     * ---------------------------------
                     * the math formula for that is n(n+1) / 2
                     * where n is our largest number
                     */

                    var howFar = abs(startDepth - endDepth);

                    return fuelBurn = howFar * (howFar + 1) / 2;
                })
                .reduce((previous,next) => {
                    return previous + next;
                },0)
            );
        }

        print.line("min fuel used is ::: " & fuelUsed.min());
        //print.line(fuelUsed)
    }
}