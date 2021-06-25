import React from 'react';
import fetchOrders from '../actions/fetchOrders';
import { connect } from 'react-redux';
import Order from '../components/Order';

class OrdersContainer extends React.Component {
    constructor() {
        super();
        this.state = {
            products: []
        }
    }

    componentDidMount() {
        console.log('component did mount')
        this.props.fetchOrders();
    }

    render() {
        if (this.props.products.products) {
            return this.props.products.products.map(prod => <Order data={prod} />)
        } else {
            return <h2>No products yet.</h2>
        }
    }
}

const mapStateToProps = state => {
    return { products: state.products };
}

const mapDispatchToProps = dispatch => {
    return {
        fetchOrders: () => dispatch(fetchOrders())
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(OrdersContainer);