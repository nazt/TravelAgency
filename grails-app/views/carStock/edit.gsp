

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code:'carStock.label', default:'CarStock')}" />
        <title>Edit ${entityName}</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${resource(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">${entityName} List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New ${entityName}</g:link></span>
        </div>
        <div class="body">
            <h1>Edit ${entityName}</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${carStockInstance}">
            <div class="errors">
                <g:renderErrors bean="${carStockInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${carStockInstance?.id}" />
                <input type="hidden" name="version" value="${carStockInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="brand">
                                    <g:message code="carStock.brand.label" default="Brand" />
                                  </label>

                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carStockInstance,field:'brand','errors')}">
                                    <g:select optionKey="id" from="${CarBrand.list()}" name="brand.id" value="${carStockInstance?.brand?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="model">
                                    <g:message code="carStock.model.label" default="Model" />
                                  </label>

                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carStockInstance,field:'model','errors')}">
                                    <input type="text" id="model" name="model" value="${fieldValue(bean:carStockInstance,field:'model')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="colour">
                                    <g:message code="carStock.colour.label" default="Colour" />
                                  </label>

                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carStockInstance,field:'colour','errors')}">
                                    <g:select optionKey="id" from="${Colour.list()}" name="colour.id" value="${carStockInstance?.colour?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="type">
                                    <g:message code="carStock.type.label" default="Type" />
                                  </label>

                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carStockInstance,field:'type','errors')}">
                                    <g:select optionKey="id" from="${CarType.list()}" name="type.id" value="${carStockInstance?.type?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="engine">
                                    <g:message code="carStock.engine.label" default="Engine" />
                                  </label>

                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carStockInstance,field:'engine','errors')}">
                                    <g:select optionKey="id" from="${Engine.list()}" name="engine.id" value="${carStockInstance?.engine?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="fuel">
                                    <g:message code="carStock.fuel.label" default="Fuel" />
                                  </label>

                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carStockInstance,field:'fuel','errors')}">
                                    <g:select optionKey="id" from="${Fuel.list()}" name="fuel.id" value="${carStockInstance?.fuel?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="carRegistration">
                                    <g:message code="carStock.carRegistration.label" default="Car Registration" />
                                  </label>

                                </td>
                                <td valign="top" class="value ${hasErrors(bean:carStockInstance,field:'carRegistration','errors')}">
                                    <input type="text" id="carRegistration" name="carRegistration" value="${fieldValue(bean:carStockInstance,field:'carRegistration')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
