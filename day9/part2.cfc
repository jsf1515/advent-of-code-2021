component {

    function run(){
        // x and y of all found basins
        var foundLows = [];

        var inputs = fileRead("./inputs.txt")
            .listToArray(chr(10))
            .map((element) => {
                return element.listToArray("")
            })
            .each((element, index, array) => {
                element.each((subElement, subIndex, subArray) => {
                    if(index == 1 and subIndex == 1){
                        // top left
                        if( subElement < subArray[subIndex+1] && subElement < array[index+1][subIndex] ){
                            foundLows.append([index,subIndex]);
                        }
                    } else if ( index == 1 and subIndex == subArray.len() ){
                        // top right
                        if( subElement < subArray[subIndex-1] && subElement < array[index+1][subIndex]){
                            foundLows.append([index,subIndex]);
                        }
                    } else if (index == 1){
                        // remaining top row
                        if( subElement < subArray[subIndex - 1] && subElement < subArray[subIndex + 1] && subElement < array[index+1][subIndex] ){
                            foundLows.append([index,subIndex]);
                        }
                    } else if ( index == array.len() && subIndex == 1){
                        // bottom left
                        if( subElement < subArray[subIndex+1] && subElement < array[index-1][subIndex] ){
                            foundLows.append([index,subIndex]);
                        }
                    } else if ( index == array.len() && subIndex == subArray.len()){
                        // bottom right
                        if( subElement < subArray[subIndex-1] && subElement < array[index-1][subIndex]){
                            foundLows.append([index,subIndex]);
                        }
                    } else if ( index == array.len() ){
                        // rest of bottom row
                        if( subElement < subArray[subIndex - 1] && subElement < subArray[subIndex + 1] && subElement < array[index-1][subIndex] ){
                            foundLows.append([index,subIndex]);
                        }
                    } else if ( subIndex == 1){
                        // left edge
                        if( subElement < array[index+1][subIndex] && subElement < array[index-1][subIndex] && subElement < subArray[subIndex+1]){
                            foundLows.append([index,subIndex]);
                        }
                    } else if ( subIndex == subArray.len()){
                        // right edge
                        if( subElement < array[index+1][subIndex] && subElement < array[index-1][subIndex] && subElement < subArray[subIndex-1]){
                            foundLows.append([index,subIndex]);
                        }
                    } else {
                        // middle
                        if( subElement < array[index+1][subIndex] && subElement < array[index-1][subIndex] && subElement < subArray[subIndex-1] && subElement < subArray[subIndex+1]){
                            foundLows.append([index,subIndex]);
                        }
                    }
                });
            })

            print.line(foundLows)
    }

}