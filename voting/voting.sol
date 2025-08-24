// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title Voting Smart Contract
 * @dev Simple contract for adding candidates and voting.
 *      Stores candidates in a mapping with auto-increment IDs.
 */
contract Voting {

    // Structure to hold candidate details
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }    

    // Mapping: candidateId => Candidate
    mapping(uint => Candidate) public candidates;

    // Stores number of candidates
    uint public candidateCount;

    /**
     * @dev Adds a new candidate with a unique ID.
     * @param _name Name of the candidate.
     */
    function addCandidate(string memory _name) public {
        candidateCount++;
        candidates[candidateCount] = Candidate(candidateCount, _name, 0);
    }

    /**
     * @dev Allows voting for a candidate by ID.
     * @param _candidateId Candidate's unique ID.
     */
    function vote(uint _candidateId) public {
        candidates[_candidateId].voteCount++;
    }
}
