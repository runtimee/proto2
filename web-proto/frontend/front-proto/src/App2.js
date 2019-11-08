import React, {Component} from 'react';

import './App.css';

class App extends Component {
    render() {
        return (
          <div> {this.state.contacts} </div>
        )
    }

    state = {
        contacts: []
    };

    componentDidMount() {
        fetch('api/echo/')
            .then(res => res.json())
            .then((data) => {
                this.setState({ contacts: data.result })
            })
            .catch(console.log)
    }
}

export default App;
