% if mode == 'definition': 
balanced.debit.refund()

% else:
<%!
    import json

    def to_json( d ):
        return json.dumps( d , indent=4)
%>

var balanced = require('balanced-official');

balanced.configure('${ctx.api_key}');

balanced.get('${request['debit_href']}').refund(${to_json( request ) | n })

% endif
