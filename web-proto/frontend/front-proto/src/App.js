import React, {Component} from 'react';

import './App.css';

class App extends Component {
    render() {
        return (
          <div>
          {
            this.state.contacts.map(contact => <div>{contact.name.title} {contact.name.first} {contact.name.last}</div>)
          }
          </div>
        )
    }

    state = {
        contacts: []
    };

    componentDidMount() {
        fetch('https://randomuser.me/api/')
            .then(res => res.json())
            .then((data) => {
                this.setState({ contacts: data.results })
            })
            .catch(console.log)
    }
}

export default App;
