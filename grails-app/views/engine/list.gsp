

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code:'engine.label', default:'Engine')}" />
        <title>${entityName} List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New ${entityName}</g:link></span>
        </div>
        <div class="body">
            <h1>${entityName} List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="${message(code:'engine.id.label', default:'Id')}" />
                        
                   	        <g:sortableColumn property="engine" title="${message(code:'engine.engine.label', default:'Engine')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${engineInstanceList}" status="i" var="engineInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${engineInstance.id}">${fieldValue(bean:engineInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:engineInstance, field:'engine')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${engineInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
