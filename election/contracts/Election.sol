pragma solidity >=0.4.22;

contract Election {

    // Read/write candidate
    string public candidate;

    // Constructor
    constructor() public {
        candidate = "Candidate 1";
    }

    // Model a Candidate
    struct Candidate{
        uint id;
        string name; 
        uint voteCount;
    }

    // Read or Write Candidates
    mapping(uint => Candidate) public candidates;

    // Store Candidates COunt
    uint public candidatesCount;
    
    // function to add candidats to the maping we've created
    function addCandidate(string _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    // function to add to 2 candidates
    function Election() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }
}
