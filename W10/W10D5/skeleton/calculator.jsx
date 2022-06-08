import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      result: 0, num1: "", num2: ""
    };
    
  }
  setNum1(e) {
    // your code here
  }
  setNum2(e) {
    // your code here
  }

  render(){
    return (
      <div>
        <input onChange={this.updateWord} value={this.state.word} />
        <h1>{this.state.result}</h1>
      </div>
    );
  }
}

export default Calculator;
