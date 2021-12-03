component {

    function part1(){
        var count = 0;
        
        var inputReadings = fileRead("./inputs.txt").listToArray(chr(10));
        inputReadings.each((element,index) => {
            if(index != 1 and element > inputReadings[index-1]){
                count++;
            }
        });

        print.line(count);
    }

    function part2(){
        var count = 0;
        var previousSum = 0;
        var currentSum = 0;

        var inputReadings = fileRead("./inputs.txt").listToArray(chr(10));
        inputReadings.each((element,index) => {
            if(index > 2){
                currentSum = element + inputReadings[index-1] + inputReadings[index-2];

                if(previousSum != 0 and currentSum > previousSum){
                    count++;
                }

                previousSum = currentSum;
            }
        });

        print.line(count);
    }

}