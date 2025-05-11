import React from "react"
import "../styles/components/Label.css"

const Label = React.forwardRef(({ className = "", ...props }, ref) => {
  return <label className={`label ${className}`} ref={ref} {...props} />
})

Label.displayName = "Label"

export default Label

