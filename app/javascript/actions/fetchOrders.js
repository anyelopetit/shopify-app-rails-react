const fetchOrders = () => {
    console.log('in fetch orders');
    return (dispatch) => {
        console.log('going to start fetching prods')
        dispatch({ type: 'START_FETCHING_PRODUCTS'});
        fetch('https://shipit-developer-test.myshopify.com/admin/api/2021-04/orders.json')
            .then(resp => resp.json())
            .then(data => {
                dispatch({ type: 'ADD_PRODUCTS', orders: data })
            })
    }
}

export default fetchOrders;