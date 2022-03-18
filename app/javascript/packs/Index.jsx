import React from 'react';
import {render} from 'react-dom';
import $ from 'jquery';                         // can i delete?
import Popper from 'popper.js';                 // can I delete?
import App from '../components/App';

document.addEventListener("DOMContentLoaded", () => {
  render(
    <App />,
    document.body.appendChild(document.createElement("div"))
  );
});


// Below  came pre written
// import ReactDOM from 'react-dom' 
// import PropTypes from 'prop-types' 

// const Hello = props => (
//   <div>Hello {props.name}!</div>
// )

// Hello.defaultProps = {
//   name: 'David'
// }

// Hello.propTypes = {
//   name: PropTypes.string
// }

// document.addEventListener('DOMContentLoaded', () => {
//   ReactDOM.render(
//     <Hello name="React" />,
//     document.body.appendChild(document.createElement('div')),
//   )
// })
