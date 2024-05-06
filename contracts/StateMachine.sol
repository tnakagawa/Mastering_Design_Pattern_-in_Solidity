// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StateMachine {
    // Enum defining the stages
    enum Stages {
        Init,
        Start,
        End
    }
    // Public variable to store the current stage
    Stages public stage = Stages.Init;

    // Internal function to transition to the next stage
    function nextStage() internal {
        stage = Stages(uint(stage) + 1);
    }

    // Function to start the state machine
    function start() public {
        require(stage == Stages.Init, "Invalid stage");
        nextStage();
    }

    // Function to end the state machine
    function end() public {
        require(stage == Stages.Start, "Invalid stage");
        nextStage();
    }
}
