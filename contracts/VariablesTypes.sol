//SPDX-License-Identifier: MIT

//defines solidity compiler version
pragma solidity ^0.8.0;

//contract that contains most commonly used types in solidity
contract VariablesTypes {

    //var 'name' of type string
    string name = 'Gladwell';

    //var 'age' of type uint
    uint age = 32;
    //var 'id' of type int
    int id = 3392455;

    /*
    //fixed type which is used for floating point numbers
    fixed temp = -5.8;

    //ufixed type which is used for floating point numbers
    ufixed weight = 46.9;
    */
    //bool which is a true or false value
    bool on;

    //dynamic array that stores uint values
    uint[] list;

    //fixed array of type int which can be negative or positive
    int[3] fixed_list;

    //struct is a user defined type that can store values of multiple types
    struct Profile {
        string name;
        uint age;
        bool dark_theme;
    }
    //mapping which stores key value pairs in solidity
    mapping(int => string) ID;

    //simple function that manipulates data
    function Store(string memory _name, int _id, uint _age) public returns(string memory, uint[] memory) {

        //pushing items into a list
        list.push(_age);

        //adding daya to map
        ID[_id] = _name;

        //return key for iD mappinga and list
        return (ID[_id], list);
    }
}

