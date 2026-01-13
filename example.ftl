<#--
  Example Freemarker Template
  This file demonstrates various Freemarker syntax features
-->


<!DOCTYPE html>
<html>
<head>
    <title>${pageTitle!"Default Title"}</title>
</head>
<body>
    <#-- Variable assignment -->
    <#assign userName = "John Doe">
    <#assign userAge = 25>

    <h1>Welcome ${userName}!</h1>

    <#-- Conditional statement -->
    <#if userAge >= 18>
        <p>You are an adult.</p>
    <#elseif userAge >= 13>
        <p>You are a teenager.</p>
    <#else>
        <p>You are a child.</p>
    </#if>

    <#-- List iteration -->
    <#assign fruits = ["Apple", "Banana", "Cherry", "Date"]>
    <h2>Fruit List:</h2>
    <ul>
        <#list fruits as fruit>
            <li>${fruit}</li>
        </#list>
    </ul>

    <#-- Hash/Map example -->
    <#assign user = {
        "name": "Jane Smith",
        "email": "jane@example.com",
        "role": "Administrator"
    }>

    <h2>User Information:</h2>
    <dl>
        <dt>Name:</dt>
        <dd>${user.name}</dd>
        <dt>Email:</dt>
        <dd>${user.email}</dd>
        <dt>Role:</dt>
        <dd>${user.role}</dd>
    </dl>

    <#-- Built-in functions -->
    <p>Name in uppercase: ${user.name?upper_case}</p>
    <p>Name length: ${user.name?length}</p>
    <p>First fruit: ${fruits?first}</p>

    <#-- Null handling -->
    <#if optionalValue??>
        <p>Optional value exists: ${optionalValue}</p>
    <#else>
        <p>Optional value is not set</p>
    </#if>

    <#-- Macro definition -->
    <#macro greet person>
        <p>Hello, ${person}! Nice to meet you.</p>
    </#macro>

    <#-- Macro usage -->
    <@greet person="Alice" />
    <@greet person="Bob" />

    <#-- Alternative square bracket syntax -->
    [#assign altVar = "This uses square brackets"]
    <p>${altVar}</p>

    [#if true]
        <p>Square bracket syntax works too!</p>
    [/#if]

</body>
</html>
