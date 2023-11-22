import std.stdio;
import std.algorithm;
import std.algorithm.sorting;
import std.container.array;
import solver;

void main(){
    string sourceFile = "./input";
    auto Solver = new Solver;
    int[] val = Solver.parseInput(sourceFile);
    int[] index = Solver.sortIndex(val);
    index.each!(i => writef("%d ", i));
    writeln();
}