component {

    function run(){

        //var inputs = [16,1,2,0,4,2,7,1,2,14];

        var inputs = fileRead("./inputs.txt").listToArray().map((element) => {
            return int(element);
        });

        var fuelUsed = [];

        for( i = inputs.min(); i <= inputs.max(); i++){
            fuelUsed[i + 1] = inputs
                .map((element) => {
                    return abs(element - i);
                })
                .reduce((previous,next) => {
                    return previous + next
                },0)
        }

        print.line(fuelUsed.min());

    }

}