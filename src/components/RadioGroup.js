import React from "react"
import "../styles/components/RadioGroup.css"

export const RadioGroup = React.forwardRef(({ className = "", ...props }, ref) => {
  return <div className={`radio-group ${className}`} ref={ref} {...props} />
})

RadioGroup.displayName = "RadioGroup"

export const RadioGroupItem = React.forwardRef(({ className = "", children, ...props }, ref) => {
  return (
    <div className="radio-group-item">
      <input type="radio" className={`radio-input ${className}`} ref={ref} {...props} />
      {children}
    </div>
  )
})

RadioGroupItem.displayName = "RadioGroupItem"

