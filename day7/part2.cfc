component {
    
    function run(){
        //var inputs = [16,1,2,0,4,2,7,1,2,14];

        var inputs = fileRead("./inputs.txt").listToArray().map((element) => {
            return int(element);
        });

        fuelUsed = [];

        for( i = inputs.min(); i <= inputs.max(); i++){
            fuelUsed[i + 1] = inputs
                .map((element) => {

                    var howFar = abs(i - element);
                    var fuelBurn = (( howFar + 1) * (howFar)) / 2;

                    return fuelBurn;
                })
                .reduce((previous,next) => {
                    return previous + next
                },0)
        }

        print.line("min fuel used is ::: " & fuelUsed.min());
        //print.line(fuelUsed)
    }
}