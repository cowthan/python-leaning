<#assign title="APP详情 - 账单" />
<#include "layout/header.ftl"/>
            <div class="main   ">
        
            <#include "layout/sidebar.ftl" />
        
        
            <div class="app-ctn">

            <#list versions as version>
                <a href="${base}/patch/detail?version_id=${version.id}" class="app-list-item">
                    <span class="app-list-item-hd">
                        <span class="title">Android: ${version.version_name_android}</span>
                        <span class="tips">App Version</span>
                    </span>
                    <span class="app-list-item-body">
                        <span>补丁版本:1</span>
                        <span>Size: 0MB</span>
                        <span>更新时间: 10月28日</span>
                    </span>
                </a>
            </#list>

                <a href="${base}/version/add?app_id=${app_id}" class="app-list-new">
                    <span class="app-list-new-hd"> + 添加APP版本 </span>
                    <span class="app-list-new-body">
                    </span>
                </a>
        
            </div>
        </div>
        
        
        <div class="clear"></div>
        <div id="fill"></div>
        </div>
        <div class="ft">
          <span class="copyright">
                TinkerPatch.com     © 2017 </span>
          <span class="links">
                  <a href="https://github.com/tinkerPatch">Github开源</a> | <a href="/Docs/contract">用户协议</a> |<a href="mailto:admin@tinkerpatch.com">联系我们</a></span>  </span>
        </div>
        
        <script type="text/javascript">
        
          $('[data-toggle="tooltip"]').tooltip()
        
            var fillPadding = function() {
                $('#fill').height($('#fill').height() + window.innerHeight - ($('.main').offset().top + $('.main').height() + $('.ft').height()))
            }
            $(window).resize(fillPadding);
            fillPadding();
            $('.ft').show();
        </script>

<#include "layout/footer.ftl"/>