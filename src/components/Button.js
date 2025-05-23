import "../styles/components/Button.css"

const Button = ({ children, variant = "primary", size = "medium", className = "", ...props }) => {
  return (
    <button className={`button button-${variant} button-${size} ${className}`} {...props}>
      {children}
    </button>
  )
}

export default Button

