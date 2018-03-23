<!--
    Copyright (c) Ascensio System SIA 2017. All rights reserved.
    http://www.onlyoffice.com
-->
<html>
<head>
    <meta http-equiv='Content-Type' content='text/html; charset=utf-8'>

    <title>ONLYOFFICE™</title>

    <link href="${url.context}/res/components/onlyoffice/onlyoffice.css" type="text/css" rel="stylesheet">

    <!--Change the address on installed ONLYOFFICE™ Online Editors-->
    <script id="scriptApi" type="text/javascript" src="${onlyofficeUrl}OfficeWeb/apps/api/documents/api.js"></script>

    <script type="text/javascript" src="${url.context}/res/components/onlyoffice/onlyoffice.js"></script>
</head>

<body>
    <div>
        <div id="placeholder"></div>
    </div>
    <script>

    var docName = "${docTitle}";
    var docType = docName.substring(docName.lastIndexOf(".") + 1).trim().toLowerCase();
    var documentType = getDocumentType(docType);

    new DocsAPI.DocEditor("placeholder",
        {
            type: "desktop",
            width: "100%",
            height: "100%",
            documentType: documentType,
            document: {
                title: docName,
                url: "${docUrl}",
                fileType: docType,
                key: "${key}",
                permissions: {
                    edit: true
                },
            },
            editorConfig: {
                mode: "edit",
                callbackUrl: "${callbackUrl}",
                user: {
                  id: "${userId}",
                  firstname: "${firstName}",
                  lastname: "${lastName}",
                  name: "${firstName} ${lastName}",
                },
                customization: ${onlyofficeCustomization}
            },
            events: {
            },
        });
    </script>
</body>
</html>

