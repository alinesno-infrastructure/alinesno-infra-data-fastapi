<template>
  <div>
    <el-row class="acp-dashboard-panel" :gutter="20">
      <el-col class="panel-col" :span="19">
        <div class="grid-content">
          <div class="panel-header">
            <div class="header-title"><i class="fa-solid fa-link"></i> 业务最新巡检</div>
          </div>
          <div class="panel-body" style="height: auto;position: relative;">
              <div class="direct-box">
                <ul>
                  <li class="box-item" v-for="item in attractiveFeatures" :key="item">
                    <div class="dire-panel">
                      <div class="panel-title">
                        <i class="dire-panel-icon" :class="item.icon" :alt="item.name" />
                        {{ item.name }} 
                      </div>
                      <div class="panel-describe">通过简单几步，图中7种主流开发环境轻松部署，摆脱海量文档搜索之苦。</div>
                      <!-- <div class="panel-tip">访问链接</div> -->
                    </div>
                  </li>
                </ul>
              </div>
          </div>
        </div>
      </el-col>
      <el-col :span="5">
        <div class="grid-content">
          <div class="panel-header">
            <div class="header-title"><i class="fa-solid fa-link"></i> 应用场景</div>
          </div>
          <div class="panel-body" style="height: auto;position: relative;">
            <div class="acp-app-list">
              <ul>
                <li class="app-items" style="width:100%" v-for="item in dbapiScenario" :key="item">
                  <div class="app-info">
                    <div class="app-item-title">
                        <i :class="item.icon" :alt="item.name" />
                        {{ item.name }} 
                    </div>
                    <div class="app-item desc">{{ item.desc }}</div>
                  </div>
                </li>
              </ul>
            </div>
          </div>

        </div>
      </el-col>
    </el-row>

  </div>
</template>

<script setup>

const attractiveFeatures = [
  { icon: 'fa-solid fa-cogs', name: '零代码开发', desc: '无需编写代码，只需在页面上编写SQL，即可转化成HTTP API，极大简化了后端接口开发流程' },
  { icon: 'fa-solid fa-server', name: '动态API管理', desc: '支持动态创建、编辑、下线、删除API，并实现动态发布，无需重启服务，提升了接口管理的灵活性和效率' },
  { icon: 'fa-solid fa-database', name: '全数据库支持', desc: '支持所有JDBC协议的数据库，包括主流的mysql、postgresql、oracle等，覆盖面广，适用性强' },
  { icon: 'fa-solid fa-user-tie', name: '客户端管理', desc: '可创建多客户端，并授权其访问API，监控客户端调用记录，统计API调用信息，有助于管理和监控数据服务的使用情况' },
  { icon: 'fa-solid fa-cogs', name: '丰富插件扩展', desc: '支持多种插件，如数据转换、缓存、告警等，提供了更多扩展功能，满足不同场景下的需求' },
];

const dbapiScenario = [
  { icon: 'fa-solid fa-eye-slash', name: '企业数据服务管理', desc: '作为企业数据服务的管理中心，提供动态创建发布API、监控客户端调用记录等功能' },
  { icon: 'fa-solid fa-user-shield', name: '后端接口开发', desc: '为数仓开发人员提供低代码工具，通过简单的页面配置和SQL编写，生成后端接口' },
  { icon: 'fa-solid fa-comment-slash', name: '测试环境到生产环境迁移', desc: '支持API配置的导入导出，方便测试环境到生产环境的API迁移，简化了部署和管理流程' },
];

</script>