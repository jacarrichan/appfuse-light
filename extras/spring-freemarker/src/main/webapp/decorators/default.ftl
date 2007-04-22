<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title><#if title != ''>${title}<#else>Welcome</#if> | ${rc.getMessage("webapp.name")}</title>
    <meta http-equiv="Cache-Control" content="no-store"/>
    <meta http-equiv="Pragma" content="no-cache"/>
    <meta http-equiv="Expires" content="0"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <link rel="shortcut icon" href="${base}/images/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="${base}/styles/deliciouslyblue/theme.css" title="default" />
    <link rel="alternate stylesheet" type="text/css" href="${base}/styles/deliciouslygreen/theme.css" title="green" />
    <script type="text/javascript" src="${base}/scripts/prototype.js"></script>
    <script type="text/javascript" src="${base}/scripts/scriptaculous.js"></script>
    <script type="text/javascript" src="${base}/scripts/stylesheetswitcher.js"></script>
    <script type="text/javascript" src="${base}/scripts/global.js"></script>
    ${head}
</head>

<body>
<a name="top"></a>
<div id="page">

    <div id="header" class="clearfix">

        <h1 style="cursor: pointer" onclick="location.href='${base}/'">AppFuse Light</h1>

        <div id="branding">
            <a href="http://appfuse.org" title="AppFuse - eliminating project startup time">
                <img src="${ctx}/images/powered-by-appfuse.gif" width="203" height="75" alt="AppFuse"/></a>
        </div>

        <p>${rc.getMessage("webapp.tagline")}</p>
    </div>

    <div id="content">

        <div id="main">
            <h1>${title}</h1>
            <#include "/messages.ftl"/>
            ${body}

            <div id="underground">
                <#if page.getProperty("page.underground")?exists>
                ${page.getProperty("page.underground")}
                </#if>
            </div>
        </div>

        <div id="sub">
            <h3>Resources</h3>

            <p>The following is a list of resources that will make <a href="http://springframework.org">Spring</a> infinitely easier to use.</p>

            <ul class="glassList">
                <li><a href="http://static.springframework.org/spring/docs/2.0.x/reference/index.html">Spring 2.0 Docs</a></li>
                <li><a href="http://static.springframework.org/spring/docs/2.0.x/api/index.html">Spring 2.0 API</a></li>
                <li><a href="http://www.springframework.org/bookreview">Spring Books</a></li>
                <li><a href="http://forum.springframework.org/">Spring Forums</a></li>
                <li><a href="http://springmodules.dev.java.net">Spring Modules</a></li>
            </ul>

            <img src="${base}/images/image.gif" alt="Click to Change Theme" width="150" height="112" class="right" style="margin: 10px 0 20px 0"
                 onclick="StyleSheetSwitcher.setActive((StyleSheetSwitcher.getActive() == 'default') ? 'green' : 'default')"/>
        </div>

        <div id="nav">
            <div class="wrapper">
                <h2 class="accessibility">Navigation</h2>
                <ul class="clearfix">
                    <li><a href="${base}/" title="Home"><span>Home</span></a></li>
                    <li><a href="${base}/users.html" title="View Users"><span>Users</span></a></li>
                </ul>
            </div>
        </div><!-- end nav -->

    </div><!-- end content -->

    <div id="footer">
        <p>
            <a href="http://validator.w3.org/check?uri=referer">Valid XHTML 1.0</a> |
            <a href="http://www.oswd.org/design/preview/id/2634">Deliciously Blue</a> from <a href="http://www.oswd.org/">OSWD</a> |
            Design by <a href="http://www.oswd.org/user/profile/id/8377">super j man</a>
        </p>
    </div>
</div>
</body>
</html>
