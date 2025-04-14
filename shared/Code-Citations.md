# Code Citations

## License: unknown
https://github.com/superestos/Subway-random-walk/tree/1a4107ec04933af0c3a15e0617c648cec9bb50b3/shared/graph.cu

```
<class E>
void Graph<E>::ReadGraph()
{
    cout << "Reading the input graph from the following file:\n>> " << graphFilePath << endl;
    this->graphFormat = GetFileExtension(graphFilePath);
    if(graphFormat ==
```


## License: MIT
https://github.com/AutomataLab/Subway/tree/a0ef2d1a1a6253a044ce3a980a5eaab737c7b24a/shared/graph.cu

```
GetFileExtension(graphFilePath);
    if(graphFormat == "bcsr" || graphFormat == "bwcsr")
    {
        ifstream infile (graphFilePath, ios::in | ios::binary);
        infile.read((char*)&num_nodes, sizeof(uint))
```

