import React from "react"
import "../styles/components/Input.css"

const Input = React.forwardRef(({ className = "", ...props }, ref) => {
  return <input className={`input ${className}`} ref={ref} {...props} />
})

Input.displayName = "Input"

export default Input

