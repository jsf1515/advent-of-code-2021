component {

    function part1(){

        var inputs = fileRead("./inputs.txt")
            .listToArray(chr(10));

        var gammaArray = [];
        for(i = 1; i <= inputs[1].len(); i++){
            gammaArray[i] = 0
        }

        inputs.each((element) => {
            for(i = 1; i <= element.len(); i++){
                if(element[i] == true){
                    gammaArray[i] = gammaArray[i] + 1;
                }
            }
        });

        var gammaString = "";
        var epsilonString = "";

        gammaArray.each((element) => {
            if(element > 500){
                gammaString = gammaString & "1";
                epsilonString = epsilonString & "0";
            } else {
                gammaString = gammaString & "0";
                epsilonString = epsilonString & "1";
            }
        });

        var gammaDecimal = inputBaseN(gammaString,2);
        var epsilonDecimal = inputBaseN(epsilonString,2);

        print.line("gamma binary = " & gammaString);
        print.line("gamma decimal = " & gammaDecimal);
        print.line("");
        print.line("epsilon binary = " & epsilonString);
        print.line("epsilon decimal = " & epsilonDecimal);
        print.line("");
        print.line("power level = " & epsilonDecimal * gammaDecimal);
    }

    function part2(){
        var inputs = fileRead("./inputs.txt").listToArray(chr(10));
        var inputs2 = inputs;

        var totalLoops = inputs[1].len();

        //totalLoops = 1;

        for( i = 1; i <= totalLoops; i++){
            inputs = doFunction(inputs,i);
            inputs2 = doFunction2(inputs2,i);
        }

        print.line(inputs);
        print.line(inputs2);

        print.line(  inputBaseN(inputs[1],2)  );
        print.line(  inputBaseN(inputs2[1],2)  );

        print.line( inputBaseN(inputs[1],2) * inputBaseN(inputs2[1],2))
    }

    function doFunction( itemsArray, positionNumber ){
        var arraySize = arguments.itemsArray.len();
        var oneCounter = 0;
        
        itemsArray.each((element) => {
            if(element[positionNumber] == "1"){
                oneCounter++;
            }
        });

        newArray = [];

        itemsArray.each((element,index) => {
            if( oneCounter >= (arraySize/ 2 ) and element[positionNumber] == "1" ){
                newArray.append(element)
            } else if (oneCounter < (arraySize / 2) and element[positionNumber] == "0") {
                newArray.append(element)
            }
        });

        return newArray;
    }

    function doFunction2( itemsArray, positionNumber ){
        var arraySize = arguments.itemsArray.len();
        var oneCounter = 0;

        if(arraySize == 1){
            return itemsArray;
        }
        
        itemsArray.each((element) => {
            if(element[positionNumber] == "1"){
                oneCounter++;
            }
        });

        newArray = [];

        arguments.itemsArray.each((element) => {
            if( oneCounter >= (arraySize / 2) and element[positionNumber] == "0" ){
                newArray.append(element)
            } else if ( oneCounter < (arraySize / 2) and element[positionNumber] == "1") {
                newArray.append(element);
            }
        });

        return newArray;
    }

}