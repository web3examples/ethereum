pragma solidity >=0.5.11;

contract ToDoList {
    struct Task { uint id;uint date; string content; string author; bool done; uint dateComplete;  }
    uint public lastTaskId;
    mapping(uint => Task) public tasks;

    modifier taskExists(uint id) { require (tasks[id].id != 0,"id not found"); _; }
  
    function createTask(string memory _content, string memory _author) public {
        lastTaskId++;
        tasks[lastTaskId] = Task(lastTaskId, now, _content, _author, false, 0);
    }

    function toggleDone_storage(uint id) taskExists(id) public { 
        Task storage task = tasks[id];
        task.done = !task.done;
        task.dateComplete = task.done ? now : 0;   
    }
    
    function toggleDone_memory(uint id) taskExists(id) public { // local variable: doesn't work as expected
        Task memory task = tasks[id];
        task.done = !task.done;
        task.dateComplete = task.done ? now : 0;   
    }
}