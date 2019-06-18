import { ActionTypes } from "./Types";

/* Adding product to cart */
export const addToCart = (product, quantity) => ({
  type: ActionTypes.CART_ADD,
  payload: {
    product,
    quantity: quantity || 1
  }
});
/* updating cart */
export const updateCartQuantity = (product, quantity) => ({
  type: ActionTypes.CART_UPDATE,
  payload: { product, quantity }
});
/** Removing product from cart */
export const removeFromCart = product => ({
  type: ActionTypes.CART_REMOVE,
  payload: product
});
/** Clearing everything from cart */
export const clearCart = () => ({
  type: ActionTypes.CART_CLEAR
});
