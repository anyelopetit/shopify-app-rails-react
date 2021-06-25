import React from 'react'
import ReactDOM from 'react-dom'
import { BrowserRouter as Router, Route } from 'react-router-dom'
import App from '../components/App'
import ProductsContainer from '../containers/ProductsContainer';
import OrdersContainer from '../containers/OrdersContainer';



// // Template JS File
import "bootstrap/dist/css/bootstrap.min.css";
import "./assets/css/style.css";
import "./assets/css/components.css";

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Router>
      <Route path="/" component={App} />
      <Route exact path="/products" component={ProductsContainer} />
      <Route exact path="/orders" component={OrdersContainer} />
    </Router>,
    document.body.appendChild(document.createElement('div'))
  )
})