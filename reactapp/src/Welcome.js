import React,{Component} from "react";

class Welcome extends Component{
    render(){
        return(
            <div>
                <h1 style={{color:"blue"}}>Hi! You are Welcome to React</h1>
                <h2>Hello {this.props.name} You are from {this.props.location}</h2>
                <h3>Today's topic:{this.props.children}</h3>
            </div>
        )
    }
}
export default Welcome;