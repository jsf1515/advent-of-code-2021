
component {

    function run(){

        //counting individuals was fine for the first one, but doing the
        // same thing will get exponentially large very quickly
        // do sums for a 9 element array with the number of fish for that power level

        // get the input data
        var inputs = fileRead("./inputs.txt")
            .listToArray()
            .map((element) => {
                return int(element);
            });

        var days = [0,0,0,0,0,0,0,0,0];

        // load the initial data to an array
        // power levels are offset because cf is a 1 based array
        inputs.each((element,index) => {
            days[element+1] = days[element+1] + 1
        });

        for( day = 0; day < 256; day++){
            births = days.shift()
            days.push(births) 
            days[7] += births
        }

        totalFish = 0;

        days.each((element) => {
            totalFish = totalFish + element
        });

        print.line(totalFish);


    }

}