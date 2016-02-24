var TreeMenu = React.createClass({
  loadMenu: function() {
    $.ajax({
      url: this.props.url,
      dataType: 'json',
      cache: false,
      success: function(data) {
        this.setState({data: data});
      }.bind(this),
      error: function(xhr, status, err) {
        console.error(this.props.url, status, err.toString());
      }.bind(this)
    });
  },
  getInitialState: function() {
    return {data: []};
  },
  componentDidMount: function() {
    this.loadMenu();
  },
  
  render() {
  	if(this.state.data == null){
  		return null;
  	}
    return ( 
    	<div className="category-content no-padding">
        	<Menus data={this.state.data} />
        </div>
    );
  },
});

var Menus = React.createClass({
  render() {
    var Items = this.props.data.map(function (item) {
      return (
        <Item item={item} />
      );
    });

    return ( 
      <ul className="navigation navigation-main navigation-accordion">
        {Items}
      </ul>
    );
  }
});

var Items = React.createClass({
  render() {
	  var Items = this.props.item.map(function (item) {
		  return (
			<Item item={item} />
		  );
    });	
	  
    return ( 
      <ul className="hidden-ul">
        {Items}
      </ul>
    );
  }
});

var Item = React.createClass({
  invoke(){
	  if(!this.props.item.url || this.props.item.url === "#"){
		  return;
	  }
	  invoke(this.props.item.url);
  },
  render() {
    var template = null;
    if(this.props.item.menu){
      template = ( 
        <li>
            <a href="#" className="has-ul">
            	<i className={this.props.item.icon}></i>
            	<span>
            		{this.props.item.name}
            		<span className={"badge bg-warning-"+this.props.item.errcode}>{this.props.item.warning}</span>
            	</span>
            </a>
            <Items item={this.props.item.menu} />
        </li>
      )
    } else {
        template = ( 
          <li>
              <a href="#" onClick={this.invoke}>
                <i className={this.props.item.icon}></i>
                <span>
	        		{this.props.item.name}
	        		<span className={"badge bg-warning-"+this.props.item.errcode}>{this.props.item.warning}</span>
	        	</span>
              </a>
          </li>
        )
    }

    return template;
  }
});

ReactDOM.render(
	  React.createElement(TreeMenu, {url : "iassets/data/json/menu.data.json"}),
	  document.getElementById("TreeMenu")
);

