// external dependencies
import React, { Component, PropTypes } from 'react';
import List from 'material-ui/List';
// internal dependecies
import Todo from './Todo';

class TodoList extends Component {

  constructor(props) {
    super(props);
  }
  render() {
    const {
      handleRemove,
      handleCheck,
      todos,
    } = this.props;

    var todoNode = todos.map((todo) => {
    return (
      <Todo 
        key={ todo.id } 
        todo={ todo.task } 
        id = {todo.id}
        checked = { todo.checked }
        handleRemove={handleRemove}
        handleCheck={handleCheck}
      />
    )
  })
    return(
      <List style={{marginLeft: '5%'}}>
      <ul>{ todoNode }</ul>
    </List>
    )
  }
}
  
export default TodoList
