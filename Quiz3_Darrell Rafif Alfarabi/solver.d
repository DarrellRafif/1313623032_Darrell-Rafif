module solver;
import std.stdio;
import std.algorithm;
import std.algorithm.sorting;
import std.container.array;

class Solver{ 
    int[] parseInput(string path){
        auto inputFile = File(path, "r");
        int[] IsiArray;
        int Angka;
        int len;
        inputFile.readf("%d\n", len);
        while(!inputFile.eof()){
            inputFile.readf("%d ", Angka);
            IsiArray ~= Angka;
        }
        return IsiArray;
    }

    int[] sortIndex(int[] x){
        int[] index = new int[x.length];
        makeIndex!("a < b")(x, index);
        // index3.each!(x => writef("%d ",x)),write("\n");
        return index;
    }  
}