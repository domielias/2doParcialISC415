<#if usuario??>
<#list urls as url>
<!-- Card -->
<div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-left-warning shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">${url.idAsb64()}</div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800">${url.url_orig}

                        <a href="/stats/${url.idAsb64()}" type="button stats" class=" d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                            <i class="fas fa-download fa-sm text-white-50"></i> Estadisticas</a>

                        <form method="delete" action="/delUrl/${url.idAsb64()}">
                            <button type="button submit" class=" d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                                <i class="fas fa-download fa-sm text-white-50"></i> Borrar Link</button>
                        </form>
                    </div>
                </div>
                <div class="col-auto">
                    <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                </div>
            </div>
        </div>
    </div>
</div>
</#list>
<#else>
    <p>
        Peixe Cascudo
    </p>

</#if>

<#if users??>
    <#list users as user>
        <!-- Card -->
        <div class="col-xl-3 col-md-6 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">${user.nombre}</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800">${user.username}

                                <#if usuario.isAdmin()??>
                                <form method="post" action="/adminRights/${usuario.id}">
                                    <button type="button downgrade submit" class=" d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                                        <i class="fas fa-download fa-sm text-white-50"></i> Destituir</button>
                                </form>

                                <#else>
                                    <form method="post" action="/adminRights/${usuario.id}">
                                        <button type="button upgrade submit" class=" d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                                            <i class="fas fa-download fa-sm text-white-50"></i> Promover</button>
                                    </form>

                                </#if>

                                <form method="delete" action="/delUsr/${user.id}">
                                    <button type="button delete submit" class=" d-sm-inline-block btn btn-sm btn-primary shadow-sm">
                                        <i class="fas fa-download fa-sm text-white-50"></i> Borrar Usuario</button>
                                </form>

                            </div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </#list>
<#else>
    <p>
        Peixe Cascudo
    </p>

</#if>