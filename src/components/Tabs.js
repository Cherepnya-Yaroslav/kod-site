"use client"

import React, { useState } from "react"
import "../styles/components/Tabs.css"

export const Tabs = ({ children, defaultValue, className = "", ...props }) => {
  const [activeTab, setActiveTab] = useState(defaultValue)

  // Clone children and pass activeTab state
  const childrenWithProps = React.Children.map(children, (child) => {
    if (React.isValidElement(child)) {
      return React.cloneElement(child, { activeTab, setActiveTab })
    }
    return child
  })

  return (
    <div className={`tabs ${className}`} {...props}>
      {childrenWithProps}
    </div>
  )
}

export const TabsList = ({ children, className = "", activeTab, setActiveTab, ...props }) => {
  // Clone children and pass activeTab state
  const childrenWithProps = React.Children.map(children, (child) => {
    if (React.isValidElement(child)) {
      return React.cloneElement(child, { activeTab, setActiveTab })
    }
    return child
  })

  return (
    <div className={`tabs-list ${className}`} {...props}>
      {childrenWithProps}
    </div>
  )
}

export const TabsTrigger = ({ children, value, activeTab, setActiveTab, className = "", ...props }) => {
  const isActive = activeTab === value

  return (
    <button
      className={`tabs-trigger ${isActive ? "tabs-trigger-active" : ""} ${className}`}
      onClick={() => setActiveTab(value)}
      {...props}
    >
      {children}
    </button>
  )
}

export const TabsContent = ({ children, value, activeTab, className = "", ...props }) => {
  const isActive = activeTab === value

  if (!isActive) return null

  return (
    <div className={`tabs-content ${className}`} {...props}>
      {children}
    </div>
  )
}

