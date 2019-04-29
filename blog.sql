/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-04-29 14:39:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for me_article
-- ----------------------------
DROP TABLE IF EXISTS `me_article`;
CREATE TABLE `me_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_counts` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `summary` varchar(100) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `view_counts` int(11) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `body_id` bigint(20) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKndx2m69302cso79y66yxiju4h` (`author_id`),
  KEY `FKrd11pjsmueckfrh9gs7bc6374` (`body_id`),
  KEY `FKjrn3ua4xmiulp8raj7m9d2xk6` (`category_id`),
  CONSTRAINT `FKjrn3ua4xmiulp8raj7m9d2xk6` FOREIGN KEY (`category_id`) REFERENCES `me_category` (`id`),
  CONSTRAINT `FKndx2m69302cso79y66yxiju4h` FOREIGN KEY (`author_id`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKrd11pjsmueckfrh9gs7bc6374` FOREIGN KEY (`body_id`) REFERENCES `me_article_body` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_article
-- ----------------------------
INSERT INTO `me_article` VALUES ('1', '2', '2018-01-31 13:16:16', 'Vue构建前台页面过程1Vue构建前台页面过程2Vue构建前台页面过程3Vue构建前台页面过程4Vue构建前台页面过程5Vue构建前台页面过程6Vue构建前台页面过程7Vue构建前台页面过程8', 'Vue构建前台页面Vue构建前台页面Vue构建前台页面Vue构建前台页面', '67', '0', '1', '1', '1');
INSERT INTO `me_article` VALUES ('9', '5', '2018-02-01 14:37:23', 'Vue (读音 /vjuː/，类似于 view) 是一套用于构建用户界面的渐进式框架。', 'Vue.js 是什么', '13', '0', '1', '20', '1');
INSERT INTO `me_article` VALUES ('10', '3', '2018-02-01 14:47:19', '本节将介绍如何在项目中使用 Element。', 'Element相关', '10', '0', '1', '21', '1');
INSERT INTO `me_article` VALUES ('25', '0', '2019-04-28 14:28:22', '摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘', '文章标题', '8', '0', '16', '39', '1');

-- ----------------------------
-- Table structure for me_article_body
-- ----------------------------
DROP TABLE IF EXISTS `me_article_body`;
CREATE TABLE `me_article_body` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `content_html` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_article_body
-- ----------------------------
INSERT INTO `me_article_body` VALUES ('1', '## 2018-01-04\n\n```\n# 使用vue的Webpack模板生成脚手架\n```\n\n## 2018-01-05\n\n```\n# 引入ElementUI\n\n# babel-plugin-component自定义主题\n# 首页\n# 登陆页\n# 注册页面\n# 日志页\n```\n## 2018-01-07\n\n```\n# 调整底部栏始终固定在底部\n# 日志页 添加时间轴\n# 首页的文章列表\n```\n## 2018-01-08\n\n```\n# 使用组件-博客作者tab页 \n# 添加第三方图标\n```\n\n## 2018-01-09\n\n```\n# 调整顶部导航栏：激活文字颜色，click点击\n# 组件-最新文章tab页\n\n# 最新文章、最热文章使用相同组件\n# 底部栏设计\n# 页面与两边边距改为100\n```\n\n## 2018-01-10\n\n```\n# 写博客 引入mavonEditor编辑器\n# 顶部导航栏都放入一个Menu中\n# 写文章页面\n#　mavonEditor局部引入\n\n#　页面的中间区域固定宽度，自动居中\n# 发布和取消\n# 发布dialog\n\n```\n## 2018-01-11\n\n```\n# 文章组件用守卫来改变body背景色\n# 调整登陆和注册页面，使其居中\n\n#子页面调整根元素为div\n#文章详情页\n\n```\n## 2018-01-12\n\n```\n# 文章详情页  内容  评论等\n\n```\n## 2018-01-13\n\n```\n## 重新调整页面结构	\n#顶部和底部 抽成  BaseHeader BaseFooter 组件\n#BlogView为单独页，以前是Home的子路由\n\n```\n## 2018-01-15\n\n``` \n# 文章分类去掉子级\n# 将首页的文章列表抽成 ArticleItem组件\n# 增加文章的评论展示\n# 增加文章分类、标签页\n\n```\n\n## 2018-01-15  2\n\n``` \n# 回到顶部去掉过渡动画（影响顶部导航栏）\n# 顶部导航栏 增加登录后菜单\n# 首页增加 最热标签\n# 增加 文章分类 标签的详情页\n# 将文章详情页、 文章分类标签页 改为Home的子路由（以前单独页）\n# Home组件增加路由判断：更正导航栏的状态、条件显示底部栏\n\n```\n\n## 2018-01-16\n\n``` \n# 将写文章的顶部Header合并到BaseHeader中\n# 图片都放到了static目录下\n\n```\n\n## 2018-01-24\n\n``` \n# 将自定义的theme放到assets下\n# 加入axios\n# 加入vuex\n# 实现登录\n# 实现退出\n\n```\n\n## 2018-01-25\n\n``` \n# 实现注册逻辑\n# 写文章功能实现\n# 写文章时支持插入图片\n\n```\n## 2018-01-26\n\n``` \n# 引入lodash工具类\n# 优化写文章的工具栏：滚动时固定顶部\n# 写文章 后台获取文章分类和标签\n\n# 首页的文章列表\n\n```\n\n## 2018-01-27\n\n``` \n# 修改首页文章列表的样式\n# 首页加载文章功能\n# 文章查看功能\n# 文章分类和标签功能列表\n\n```\n\n## 2018-01-28\n\n``` \n# 文章分类和标签详情\n\n```\n\n## 2018-01-29\n\n``` \n# 文章分类和标签的文章数\n# 首页最热文章\n# 首页最新文章\n# 首页最热标签\n\n```\n## 2018-01-30\n\n``` \n# BaseHeader放回views中\n# 修改Axios后置拦截，全局处理错误\n# 将登录 退出 和头像 放到一起\n\n```', '<h2>2018-01-04</h2>\n<pre><code class=\"lang-\"># 使用vue的Webpack模板生成脚手架\n</code></pre>\n<h2>2018-01-05</h2>\n<pre><code class=\"lang-\"># 引入ElementUI\n\n# babel-plugin-component自定义主题\n# 首页\n# 登陆页\n# 注册页面\n# 日志页\n</code></pre>\n<h2>2018-01-07</h2>\n<pre><code class=\"lang-\"># 调整底部栏始终固定在底部\n# 日志页 添加时间轴\n# 首页的文章列表\n</code></pre>\n<h2>2018-01-08</h2>\n<pre><code class=\"lang-\"># 使用组件-博客作者tab页 \n# 添加第三方图标\n</code></pre>\n<h2>2018-01-09</h2>\n<pre><code class=\"lang-\"># 调整顶部导航栏：激活文字颜色，click点击\n# 组件-最新文章tab页\n\n# 最新文章、最热文章使用相同组件\n# 底部栏设计\n# 页面与两边边距改为100\n</code></pre>\n<h2>2018-01-10</h2>\n<pre><code class=\"lang-\"># 写博客 引入mavonEditor编辑器\n# 顶部导航栏都放入一个Menu中\n# 写文章页面\n#　mavonEditor局部引入\n\n#　页面的中间区域固定宽度，自动居中\n# 发布和取消\n# 发布dialog\n\n</code></pre>\n<h2>2018-01-11</h2>\n<pre><code class=\"lang-\"># 文章组件用守卫来改变body背景色\n# 调整登陆和注册页面，使其居中\n\n#子页面调整根元素为div\n#文章详情页\n\n</code></pre>\n<h2>2018-01-12</h2>\n<pre><code class=\"lang-\"># 文章详情页  内容  评论等\n\n</code></pre>\n<h2>2018-01-13</h2>\n<pre><code class=\"lang-\">## 重新调整页面结构	\n#顶部和底部 抽成  BaseHeader BaseFooter 组件\n#BlogView为单独页，以前是Home的子路由\n\n</code></pre>\n<h2>2018-01-15</h2>\n<pre><code class=\"lang-\"># 文章分类去掉子级\n# 将首页的文章列表抽成 ArticleItem组件\n# 增加文章的评论展示\n# 增加文章分类、标签页\n\n</code></pre>\n<h2>2018-01-15  2</h2>\n<pre><code class=\"lang-\"># 回到顶部去掉过渡动画（影响顶部导航栏）\n# 顶部导航栏 增加登录后菜单\n# 首页增加 最热标签\n# 增加 文章分类 标签的详情页\n# 将文章详情页、 文章分类标签页 改为Home的子路由（以前单独页）\n# Home组件增加路由判断：更正导航栏的状态、条件显示底部栏\n\n</code></pre>\n<h2>2018-01-16</h2>\n<pre><code class=\"lang-\"># 将写文章的顶部Header合并到BaseHeader中\n# 图片都放到了static目录下\n\n</code></pre>\n<h2>2018-01-24</h2>\n<pre><code class=\"lang-\"># 将自定义的theme放到assets下\n# 加入axios\n# 加入vuex\n# 实现登录\n# 实现退出\n\n</code></pre>\n<h2>2018-01-25</h2>\n<pre><code class=\"lang-\"># 实现注册逻辑\n# 写文章功能实现\n# 写文章时支持插入图片\n\n</code></pre>\n<h2>2018-01-26</h2>\n<pre><code class=\"lang-\"># 引入lodash工具类\n# 优化写文章的工具栏：滚动时固定顶部\n# 写文章 后台获取文章分类和标签\n\n# 首页的文章列表\n\n</code></pre>\n<h2>2018-01-27</h2>\n<pre><code class=\"lang-\"># 修改首页文章列表的样式\n# 首页加载文章功能\n# 文章查看功能\n# 文章分类和标签功能列表\n\n</code></pre>\n<h2>2018-01-28</h2>\n<pre><code class=\"lang-\"># 文章分类和标签详情\n\n</code></pre>\n<h2>2018-01-29</h2>\n<pre><code class=\"lang-\"># 文章分类和标签的文章数\n# 首页最热文章\n# 首页最新文章\n# 首页最热标签\n\n</code></pre>\n<h2>2018-01-30</h2>\n<pre><code class=\"lang-\"># BaseHeader放回views中\n# 修改Axios后置拦截，全局处理错误\n# 将登录 退出 和头像 放到一起\n\n</code></pre>\n');
INSERT INTO `me_article_body` VALUES ('20', 'Vue (读音 /vjuː/，类似于 view) 是一套用于构建用户界面的渐进式框架。与其它大型框架不同的是，Vue 被设计为可以自底向上逐层应用。Vue 的核心库只关注视图层，不仅易于上手，还便于与第三方库或既有项目整合。另一方面，当与现代化的工具链以及各种支持类库结合使用时，Vue 也完全能够为复杂的单页应用提供驱动。\n\n如果你想在深入学习 Vue 之前对它有更多了解，我们制作了一个视频，带您了解其核心概念和一个示例工程。\n如果你已经是有经验的前端开发者，想知道 Vue 与其它库/框架有哪些区别，请查看对比其它框架。\n\n# 起步\n\n> 官方指南假设你已了解关于 HTML、CSS 和 JavaScript 的中级知识。如果你刚开始学习前端开发，将框架作为你的第一步可能不是最好的主意——掌握好基础知识再来吧！之前有其它框架的使用经验会有帮助，但这不是必需的。\n\n尝试 Vue.js 最简单的方法是使用 JSFiddle 上的 Hello World 例子。你可以在浏览器新标签页中打开它，跟着例子学习一些基础用法。或者你也可以创建一个 .html 文件，然后通过如下方式引入 Vue：\n\n```javascript\n<script src=\"https://cdn.jsdelivr.net/npm/vue\"></script>\n\n```\n安装教程给出了更多安装 Vue 的方式。请注意我们不推荐新手直接使用 vue-cli，尤其是在你还不熟悉基于 Node.js 的构建工具时。\n\n# 声明式渲染\nVue.js 的核心是一个允许采用简洁的模板语法来声明式地将数据渲染进 DOM 的系统：\n```javascript\n<div id=\"app\">\n  {{ message }}\n</div>\n\n```\n```javascript\nvar app = new Vue({\n  el: \'#app\',\n  data: {\n    message: \'Hello Vue!\'\n  }\n})\n\n```\n我们已经成功创建了第一个 Vue 应用！看起来这跟渲染一个字符串模板非常类似，但是 Vue 在背后做了大量工作。现在数据和 DOM 已经被建立了关联，所有东西都是响应式的。我们要怎么确认呢？打开你的浏览器的 JavaScript 控制台 (就在这个页面打开)，并修改 app.message 的值，你将看到上例相应地更新。\n\n除了文本插值，我们还可以像这样来绑定元素特性：\n\n\n\n\n\n\n', '<p>Vue (读音 /vjuː/，类似于 view) 是一套用于构建用户界面的渐进式框架。与其它大型框架不同的是，Vue 被设计为可以自底向上逐层应用。Vue 的核心库只关注视图层，不仅易于上手，还便于与第三方库或既有项目整合。另一方面，当与现代化的工具链以及各种支持类库结合使用时，Vue 也完全能够为复杂的单页应用提供驱动。</p>\n<p>如果你想在深入学习 Vue 之前对它有更多了解，我们制作了一个视频，带您了解其核心概念和一个示例工程。<br />\n如果你已经是有经验的前端开发者，想知道 Vue 与其它库/框架有哪些区别，请查看对比其它框架。</p>\n<h1>起步</h1>\n<blockquote>\n<p>官方指南假设你已了解关于 HTML、CSS 和 JavaScript 的中级知识。如果你刚开始学习前端开发，将框架作为你的第一步可能不是最好的主意——掌握好基础知识再来吧！之前有其它框架的使用经验会有帮助，但这不是必需的。</p>\n</blockquote>\n<p>尝试 Vue.js 最简单的方法是使用 JSFiddle 上的 Hello World 例子。你可以在浏览器新标签页中打开它，跟着例子学习一些基础用法。或者你也可以创建一个 .html 文件，然后通过如下方式引入 Vue：</p>\n<pre><div class=\"hljs\"><code class=\"lang-javascript\">&lt;script src=<span class=\"hljs-string\">\"https://cdn.jsdelivr.net/npm/vue\"</span>&gt;<span class=\"xml\"><span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">script</span>&gt;</span></span>\n\n</code></div></pre>\n<p>安装教程给出了更多安装 Vue 的方式。请注意我们不推荐新手直接使用 vue-cli，尤其是在你还不熟悉基于 Node.js 的构建工具时。</p>\n<h1>声明式渲染</h1>\n<p>Vue.js 的核心是一个允许采用简洁的模板语法来声明式地将数据渲染进 DOM 的系统：</p>\n<pre><div class=\"hljs\"><code class=\"lang-javascript\">&lt;div id=<span class=\"hljs-string\">\"app\"</span>&gt;\n  {{ message }}\n&lt;<span class=\"hljs-regexp\">/div&gt;\n\n</span></code></div></pre>\n<pre><div class=\"hljs\"><code class=\"lang-javascript\"><span class=\"hljs-keyword\">var</span> app = <span class=\"hljs-keyword\">new</span> Vue({\n  <span class=\"hljs-attr\">el</span>: <span class=\"hljs-string\">\'#app\'</span>,\n  <span class=\"hljs-attr\">data</span>: {\n    <span class=\"hljs-attr\">message</span>: <span class=\"hljs-string\">\'Hello Vue!\'</span>\n  }\n})\n\n</code></div></pre>\n<p>我们已经成功创建了第一个 Vue 应用！看起来这跟渲染一个字符串模板非常类似，但是 Vue 在背后做了大量工作。现在数据和 DOM 已经被建立了关联，所有东西都是响应式的。我们要怎么确认呢？打开你的浏览器的 JavaScript 控制台 (就在这个页面打开)，并修改 app.message 的值，你将看到上例相应地更新。</p>\n<p>除了文本插值，我们还可以像这样来绑定元素特性：</p>\n');
INSERT INTO `me_article_body` VALUES ('21', '## 快速上手\n\n本节将介绍如何在项目中使用 Element。\n\n### 使用 Starter Kit\n我们提供了通用的项目模板，你可以直接使用。对于 Laravel 用户，我们也准备了相应的模板，同样可以直接下载使用。\n\n如果不希望使用我们提供的模板，请继续阅读。\n\n### 使用 vue-cli\n\n我们还可以使用 vue-cli 初始化项目，命令如下：\n\n```language\n> npm i -g vue-cli\n> mkdir my-project && cd my-project\n> vue init webpack\n> npm i && npm i element-ui\n```\n\n### 引入 Element\n你可以引入整个 Element，或是根据需要仅引入部分组件。我们先介绍如何引入完整的 Element。\n\n#### 完整引入\n在 main.js 中写入以下内容：\n```javascript\nimport Vue from \'vue\'\nimport ElementUI from \'element-ui\'\nimport \'element-ui/lib/theme-chalk/index.css\'\nimport App from \'./App.vue\'\n\nVue.use(ElementUI)\n\nnew Vue({\n  el: \'#app\',\n  render: h => h(App)\n})\n\n```\n以上代码便完成了 Element 的引入。需要注意的是，样式文件需要单独引入。\n\n#### 按需引入\n借助 babel-plugin-component，我们可以只引入需要的组件，以达到减小项目体积的目的。\n\n首先，安装 babel-plugin-component：\n\n', '<h2>快速上手</h2>\n<p>本节将介绍如何在项目中使用 Element。</p>\n<h3>使用 Starter Kit</h3>\n<p>我们提供了通用的项目模板，你可以直接使用。对于 Laravel 用户，我们也准备了相应的模板，同样可以直接下载使用。</p>\n<p>如果不希望使用我们提供的模板，请继续阅读。</p>\n<h3>使用 vue-cli</h3>\n<p>我们还可以使用 vue-cli 初始化项目，命令如下：</p>\n<pre><code class=\"lang-language\">&gt; npm i -g vue-cli\n&gt; mkdir my-project &amp;&amp; cd my-project\n&gt; vue init webpack\n&gt; npm i &amp;&amp; npm i element-ui\n</code></pre>\n<h3>引入 Element</h3>\n<p>你可以引入整个 Element，或是根据需要仅引入部分组件。我们先介绍如何引入完整的 Element。</p>\n<h4>完整引入</h4>\n<p>在 main.js 中写入以下内容：</p>\n<pre><div class=\"hljs\"><code class=\"lang-javascript\"><span class=\"hljs-keyword\">import</span> Vue <span class=\"hljs-keyword\">from</span> <span class=\"hljs-string\">\'vue\'</span>\n<span class=\"hljs-keyword\">import</span> ElementUI <span class=\"hljs-keyword\">from</span> <span class=\"hljs-string\">\'element-ui\'</span>\n<span class=\"hljs-keyword\">import</span> <span class=\"hljs-string\">\'element-ui/lib/theme-chalk/index.css\'</span>\n<span class=\"hljs-keyword\">import</span> App <span class=\"hljs-keyword\">from</span> <span class=\"hljs-string\">\'./App.vue\'</span>\n\nVue.use(ElementUI)\n\n<span class=\"hljs-keyword\">new</span> Vue({\n  <span class=\"hljs-attr\">el</span>: <span class=\"hljs-string\">\'#app\'</span>,\n  <span class=\"hljs-attr\">render</span>: <span class=\"hljs-function\"><span class=\"hljs-params\">h</span> =&gt;</span> h(App)\n})\n\n</code></div></pre>\n<p>以上代码便完成了 Element 的引入。需要注意的是，样式文件需要单独引入。</p>\n<h4>按需引入</h4>\n<p>借助 babel-plugin-component，我们可以只引入需要的组件，以达到减小项目体积的目的。</p>\n<p>首先，安装 babel-plugin-component：</p>\n');
INSERT INTO `me_article_body` VALUES ('38', '我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章', '<p>我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章</p>\n');
INSERT INTO `me_article_body` VALUES ('39', '我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章\n**粗体**\n*斜体*\n# 一级标题#\n# 二级标题\n### 三级标题\n#### 四级标题\n##### 五级标题\n###### 六级标题\n++下划线++\n~~中划线~~\n++下划线++\n==标记==\n^上角标^\n~> 下角标~\n> 段落引用\n- 1\n- ![周星星.jpg](http://localhost:8888/20190428/22669bb6-eba3-4c33-84ec-7f7007e7198a_周星星.jpg). \n```java\n\n```\n\n', '<p>我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章我的文章<br />\n<strong>粗体</strong><br />\n<em>斜体</em></p>\n<h1><a id=\"_3\"></a>一级标题#</h1>\n<h1><a id=\"_4\"></a>二级标题</h1>\n<h3><a id=\"_5\"></a>三级标题</h3>\n<h4><a id=\"_6\"></a>四级标题</h4>\n<h5><a id=\"_7\"></a>五级标题</h5>\n<h6><a id=\"_8\"></a>六级标题</h6>\n<p><ins>下划线</ins><br />\n<s>中划线</s><br />\n<ins>下划线</ins><br />\n<mark>标记</mark><br />\n<sup>上角标</sup><br />\n~&gt; 下角标~</p>\n<blockquote>\n<p>段落引用</p>\n</blockquote>\n<ul>\n<li>1</li>\n<li><img src=\"http://localhost:8888/20190428/22669bb6-eba3-4c33-84ec-7f7007e7198a_%E5%91%A8%E6%98%9F%E6%98%9F.jpg\" alt=\"周星星.jpg\" />.</li>\n</ul>\n<pre><div class=\"hljs\"><code class=\"lang-java\">\n</code></div></pre>\n');

-- ----------------------------
-- Table structure for me_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `me_article_tag`;
CREATE TABLE `me_article_tag` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  KEY `FK2s65pu9coxh7w16s8jycih79w` (`tag_id`),
  KEY `FKsmysra6pt3ehcvts18q2h4409` (`article_id`),
  CONSTRAINT `FK2s65pu9coxh7w16s8jycih79w` FOREIGN KEY (`tag_id`) REFERENCES `me_tag` (`id`),
  CONSTRAINT `FKsmysra6pt3ehcvts18q2h4409` FOREIGN KEY (`article_id`) REFERENCES `me_article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_article_tag
-- ----------------------------
INSERT INTO `me_article_tag` VALUES ('1', '7');
INSERT INTO `me_article_tag` VALUES ('1', '5');
INSERT INTO `me_article_tag` VALUES ('1', '8');
INSERT INTO `me_article_tag` VALUES ('9', '7');
INSERT INTO `me_article_tag` VALUES ('10', '7');
INSERT INTO `me_article_tag` VALUES ('10', '8');
INSERT INTO `me_article_tag` VALUES ('10', '5');
INSERT INTO `me_article_tag` VALUES ('10', '6');
INSERT INTO `me_article_tag` VALUES ('25', '1');
INSERT INTO `me_article_tag` VALUES ('25', '2');

-- ----------------------------
-- Table structure for me_category
-- ----------------------------
DROP TABLE IF EXISTS `me_category`;
CREATE TABLE `me_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `categoryname` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_category
-- ----------------------------
INSERT INTO `me_category` VALUES ('1', '/category/front.png', '前端', null);
INSERT INTO `me_category` VALUES ('2', '/category/back.png', '后端', null);
INSERT INTO `me_category` VALUES ('3', '/category/lift.jpg', '生活', null);
INSERT INTO `me_category` VALUES ('4', '/category/database.png', '数据库', null);
INSERT INTO `me_category` VALUES ('5', '/category/language.png', '编程语言', null);

-- ----------------------------
-- Table structure for me_comment
-- ----------------------------
DROP TABLE IF EXISTS `me_comment`;
CREATE TABLE `me_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `to_uid` bigint(20) DEFAULT NULL,
  `level` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKecq0fuo9k0lnmea6r01vfhiok` (`article_id`),
  KEY `FKkvuyh6ih7dt1rfqhwsjomsa6i` (`author_id`),
  KEY `FKaecafrcorkhyyp1luffinsfqs` (`parent_id`),
  KEY `FK73dgr23lbs3ebex5qvqyku308` (`to_uid`),
  CONSTRAINT `FK73dgr23lbs3ebex5qvqyku308` FOREIGN KEY (`to_uid`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKaecafrcorkhyyp1luffinsfqs` FOREIGN KEY (`parent_id`) REFERENCES `me_comment` (`id`),
  CONSTRAINT `FKecq0fuo9k0lnmea6r01vfhiok` FOREIGN KEY (`article_id`) REFERENCES `me_article` (`id`),
  CONSTRAINT `FKkvuyh6ih7dt1rfqhwsjomsa6i` FOREIGN KEY (`author_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_comment
-- ----------------------------
INSERT INTO `me_comment` VALUES ('1', '你辛苦了', '2018-01-31 13:29:01', '1', '15', '1', '1', '');
INSERT INTO `me_comment` VALUES ('2', '哈哈哈', '2018-01-31 16:12:31', '1', '1', '1', '1', null);
INSERT INTO `me_comment` VALUES ('53', '太棒了', '2019-04-28 14:34:24', '9', '16', null, null, '0');
INSERT INTO `me_comment` VALUES ('54', '还行吧,讲究看吧', '2019-04-28 14:34:44', '9', '16', null, null, '0');
INSERT INTO `me_comment` VALUES ('55', '这垃圾玩意', '2019-04-28 15:13:39', '9', '16', null, null, '0');
INSERT INTO `me_comment` VALUES ('56', '确实', '2019-04-29 11:24:26', '9', '16', '55', null, '1');
INSERT INTO `me_comment` VALUES ('57', '真的吗', '2019-04-29 11:24:38', '9', '16', '55', '16', '2');
INSERT INTO `me_comment` VALUES ('58', '啥玩意撒', '2019-04-29 14:15:57', '10', '16', null, null, '0');
INSERT INTO `me_comment` VALUES ('59', '是饿的', '2019-04-29 14:16:38', '10', '16', '58', null, '1');
INSERT INTO `me_comment` VALUES ('60', '就是说', '2019-04-29 14:16:49', '10', '16', '58', '16', '2');

-- ----------------------------
-- Table structure for me_message
-- ----------------------------
DROP TABLE IF EXISTS `me_message`;
CREATE TABLE `me_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKb9bupw6d8iyytkb4owq3jsfa` (`author_id`),
  CONSTRAINT `FKb9bupw6d8iyytkb4owq3jsfa` FOREIGN KEY (`author_id`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKdsfbgdsfbsdf` FOREIGN KEY (`author_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_message
-- ----------------------------
INSERT INTO `me_message` VALUES ('1', 'fgjhfg', '2019-04-29 11:10:58', '16');
INSERT INTO `me_message` VALUES ('2', '第二条留言啊啊啊啊', '2019-04-29 11:12:59', '16');
INSERT INTO `me_message` VALUES ('3', '味', '2019-04-29 14:32:53', '16');

-- ----------------------------
-- Table structure for me_tag
-- ----------------------------
DROP TABLE IF EXISTS `me_tag`;
CREATE TABLE `me_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `tagname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_tag
-- ----------------------------
INSERT INTO `me_tag` VALUES ('1', '/tag/java.png', 'Java');
INSERT INTO `me_tag` VALUES ('2', '/tag/', 'Spring');
INSERT INTO `me_tag` VALUES ('3', '/tag/hibernate.svg', 'Hibernate');
INSERT INTO `me_tag` VALUES ('4', '/tag/maven.png', 'Maven');
INSERT INTO `me_tag` VALUES ('5', '/tag/html.png', 'Html');
INSERT INTO `me_tag` VALUES ('6', '/tag/js.png', 'JavaScript');
INSERT INTO `me_tag` VALUES ('7', '/tag/vue.png', 'Vue');
INSERT INTO `me_tag` VALUES ('8', '/tag/css.png', 'Css');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `ip` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `method` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `module` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `operation` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `params` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3632 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('2994', '2019-04-28 14:05:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '199', null);
INSERT INTO `sys_log` VALUES ('2995', '2019-04-28 14:05:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '177', null);
INSERT INTO `sys_log` VALUES ('2996', '2019-04-28 14:05:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '200', null);
INSERT INTO `sys_log` VALUES ('2997', '2019-04-28 14:05:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '190', null);
INSERT INTO `sys_log` VALUES ('2998', '2019-04-28 14:05:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '175', null);
INSERT INTO `sys_log` VALUES ('2999', '2019-04-28 14:06:10', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '4', null);
INSERT INTO `sys_log` VALUES ('3000', '2019-04-28 14:06:10', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '14', null);
INSERT INTO `sys_log` VALUES ('3001', '2019-04-28 14:06:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3002', '2019-04-28 14:06:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3003', '2019-04-28 14:06:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3004', '2019-04-28 14:06:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3005', '2019-04-28 14:06:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3006', '2019-04-28 14:06:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3007', '2019-04-28 14:06:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3008', '2019-04-28 14:06:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '6', null);
INSERT INTO `sys_log` VALUES ('3009', '2019-04-28 14:06:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '5', null);
INSERT INTO `sys_log` VALUES ('3010', '2019-04-28 14:06:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3011', '2019-04-28 14:06:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3012', '2019-04-28 14:07:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '3', null);
INSERT INTO `sys_log` VALUES ('3013', '2019-04-28 14:07:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '8', null);
INSERT INTO `sys_log` VALUES ('3014', '2019-04-28 14:19:56', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3015', '2019-04-28 14:19:56', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3016', '2019-04-28 14:19:56', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3017', '2019-04-28 14:19:56', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '10', null);
INSERT INTO `sys_log` VALUES ('3018', '2019-04-28 14:19:56', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '8', null);
INSERT INTO `sys_log` VALUES ('3019', '2019-04-28 14:19:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3020', '2019-04-28 14:19:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3021', '2019-04-28 14:19:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '2', null);
INSERT INTO `sys_log` VALUES ('3022', '2019-04-28 14:19:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3023', '2019-04-28 14:20:00', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3024', '2019-04-28 14:20:00', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3025', '2019-04-28 14:20:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3026', '2019-04-28 14:20:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3027', '2019-04-28 14:20:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '4', null);
INSERT INTO `sys_log` VALUES ('3028', '2019-04-28 14:20:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3029', '2019-04-28 14:20:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3030', '2019-04-28 14:20:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3031', '2019-04-28 14:20:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3032', '2019-04-28 14:20:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3033', '2019-04-28 14:20:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '2', null);
INSERT INTO `sys_log` VALUES ('3034', '2019-04-28 14:20:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3035', '2019-04-28 14:20:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3036', '2019-04-28 14:20:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '32', null);
INSERT INTO `sys_log` VALUES ('3037', '2019-04-28 14:20:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '22', null);
INSERT INTO `sys_log` VALUES ('3038', '2019-04-28 14:20:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3039', '2019-04-28 14:20:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3040', '2019-04-28 14:20:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3041', '2019-04-28 14:20:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3042', '2019-04-28 14:20:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3043', '2019-04-28 14:23:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '14', null);
INSERT INTO `sys_log` VALUES ('3044', '2019-04-28 14:26:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.register()', '注册', null, '注册', null, '440', null);
INSERT INTO `sys_log` VALUES ('3045', '2019-04-28 14:26:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '5', null);
INSERT INTO `sys_log` VALUES ('3046', '2019-04-28 14:26:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '23', null);
INSERT INTO `sys_log` VALUES ('3047', '2019-04-28 14:26:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '47', null);
INSERT INTO `sys_log` VALUES ('3048', '2019-04-28 14:26:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '31', null);
INSERT INTO `sys_log` VALUES ('3049', '2019-04-28 14:26:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '32', null);
INSERT INTO `sys_log` VALUES ('3050', '2019-04-28 14:26:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '41', null);
INSERT INTO `sys_log` VALUES ('3051', '2019-04-28 14:26:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.logout()', '退出', null, '退出', null, '6', null);
INSERT INTO `sys_log` VALUES ('3052', '2019-04-28 14:26:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '8', null);
INSERT INTO `sys_log` VALUES ('3053', '2019-04-28 14:26:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '1', null);
INSERT INTO `sys_log` VALUES ('3054', '2019-04-28 14:26:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3055', '2019-04-28 14:26:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3056', '2019-04-28 14:26:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3057', '2019-04-28 14:26:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3058', '2019-04-28 14:26:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3059', '2019-04-28 14:27:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', null, '获取所有标签', null, '7', null);
INSERT INTO `sys_log` VALUES ('3060', '2019-04-28 14:27:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', null, '获取所有文章分类', null, '14', null);
INSERT INTO `sys_log` VALUES ('3061', '2019-04-28 14:28:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.saveArticle()', '文章', null, '发布文章', null, '25', null);
INSERT INTO `sys_log` VALUES ('3062', '2019-04-28 14:28:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '7', null);
INSERT INTO `sys_log` VALUES ('3063', '2019-04-28 14:28:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '15', null);
INSERT INTO `sys_log` VALUES ('3064', '2019-04-28 14:28:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', null, '获取所有文章分类', null, '2', null);
INSERT INTO `sys_log` VALUES ('3065', '2019-04-28 14:28:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', null, '获取所有标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3066', '2019-04-28 14:28:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleById()', '文章', null, '根据id获取文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3067', '2019-04-28 14:28:34', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '7', null);
INSERT INTO `sys_log` VALUES ('3068', '2019-04-28 14:28:34', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '2', null);
INSERT INTO `sys_log` VALUES ('3069', '2019-04-28 14:28:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', null, '获取所有标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3070', '2019-04-28 14:28:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', null, '获取所有文章分类', null, '3', null);
INSERT INTO `sys_log` VALUES ('3071', '2019-04-28 14:28:41', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '4', null);
INSERT INTO `sys_log` VALUES ('3072', '2019-04-28 14:28:41', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3073', '2019-04-28 14:28:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '3', null);
INSERT INTO `sys_log` VALUES ('3074', '2019-04-28 14:28:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3075', '2019-04-28 14:28:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3076', '2019-04-28 14:28:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3077', '2019-04-28 14:28:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3078', '2019-04-28 14:28:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3079', '2019-04-28 14:28:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3080', '2019-04-28 14:28:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3081', '2019-04-28 14:28:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3082', '2019-04-28 14:28:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3083', '2019-04-28 14:28:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3084', '2019-04-28 14:28:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3085', '2019-04-28 14:28:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '3', null);
INSERT INTO `sys_log` VALUES ('3086', '2019-04-28 14:28:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3087', '2019-04-28 14:28:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3088', '2019-04-28 14:28:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3089', '2019-04-28 14:28:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3090', '2019-04-28 14:29:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3091', '2019-04-28 14:29:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3092', '2019-04-28 14:29:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3093', '2019-04-28 14:29:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3094', '2019-04-28 14:29:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3095', '2019-04-28 14:29:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '7', null);
INSERT INTO `sys_log` VALUES ('3096', '2019-04-28 14:29:15', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3097', '2019-04-28 14:29:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3098', '2019-04-28 14:29:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3099', '2019-04-28 14:29:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3100', '2019-04-28 14:29:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3101', '2019-04-28 14:29:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3102', '2019-04-28 14:29:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3103', '2019-04-28 14:29:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3104', '2019-04-28 14:29:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3105', '2019-04-28 14:29:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.logout()', '退出', null, '退出', null, '4', null);
INSERT INTO `sys_log` VALUES ('3106', '2019-04-28 14:29:34', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3107', '2019-04-28 14:29:34', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3108', '2019-04-28 14:29:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '2', null);
INSERT INTO `sys_log` VALUES ('3109', '2019-04-28 14:29:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3110', '2019-04-28 14:33:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3111', '2019-04-28 14:33:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3112', '2019-04-28 14:33:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3113', '2019-04-28 14:33:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3114', '2019-04-28 14:33:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3115', '2019-04-28 14:33:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '5', null);
INSERT INTO `sys_log` VALUES ('3116', '2019-04-28 14:33:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '2', null);
INSERT INTO `sys_log` VALUES ('3117', '2019-04-28 14:34:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '7', null);
INSERT INTO `sys_log` VALUES ('3118', '2019-04-28 14:34:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '0', null);
INSERT INTO `sys_log` VALUES ('3119', '2019-04-28 14:34:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '3', null);
INSERT INTO `sys_log` VALUES ('3120', '2019-04-28 14:34:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3121', '2019-04-28 14:34:24', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.saveCommentAndChangeCounts()', '评论', null, '添加评论，增加评论数', null, '11', null);
INSERT INTO `sys_log` VALUES ('3122', '2019-04-28 14:34:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.saveCommentAndChangeCounts()', '评论', null, '添加评论，增加评论数', null, '8', null);
INSERT INTO `sys_log` VALUES ('3123', '2019-04-28 14:35:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3124', '2019-04-28 14:35:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3125', '2019-04-28 14:35:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3126', '2019-04-28 14:35:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3127', '2019-04-28 14:35:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3128', '2019-04-28 14:35:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3129', '2019-04-28 14:35:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3130', '2019-04-28 14:35:10', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3131', '2019-04-28 14:35:10', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3132', '2019-04-28 14:35:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3133', '2019-04-28 14:35:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3134', '2019-04-28 14:35:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '4', null);
INSERT INTO `sys_log` VALUES ('3135', '2019-04-28 14:35:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3136', '2019-04-28 14:35:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3137', '2019-04-28 14:35:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', null, '获取所有文章分类', null, '2', null);
INSERT INTO `sys_log` VALUES ('3138', '2019-04-28 14:35:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', null, '获取所有标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3139', '2019-04-28 14:35:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3140', '2019-04-28 14:35:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3141', '2019-04-28 14:35:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3142', '2019-04-28 14:35:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3143', '2019-04-28 14:35:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3144', '2019-04-28 14:35:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '4', null);
INSERT INTO `sys_log` VALUES ('3145', '2019-04-28 14:35:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3146', '2019-04-28 14:35:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3147', '2019-04-28 14:35:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3148', '2019-04-28 14:35:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3149', '2019-04-28 14:35:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3150', '2019-04-28 14:35:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3151', '2019-04-28 14:35:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '5', null);
INSERT INTO `sys_log` VALUES ('3152', '2019-04-28 14:35:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '2', null);
INSERT INTO `sys_log` VALUES ('3153', '2019-04-28 14:35:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', null, '获取所有文章分类', null, '2', null);
INSERT INTO `sys_log` VALUES ('3154', '2019-04-28 14:35:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', null, '获取所有标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3155', '2019-04-28 14:37:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3156', '2019-04-28 14:37:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3157', '2019-04-28 14:37:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3158', '2019-04-28 14:37:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3159', '2019-04-28 14:37:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3160', '2019-04-28 14:37:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '3', null);
INSERT INTO `sys_log` VALUES ('3161', '2019-04-28 14:37:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3162', '2019-04-28 14:37:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3163', '2019-04-28 14:37:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3164', '2019-04-28 14:37:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3165', '2019-04-28 14:37:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3166', '2019-04-28 14:37:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3167', '2019-04-28 14:37:18', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '4', null);
INSERT INTO `sys_log` VALUES ('3168', '2019-04-28 14:37:18', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3169', '2019-04-28 14:37:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3170', '2019-04-28 14:37:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3171', '2019-04-28 14:37:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3172', '2019-04-28 14:37:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3173', '2019-04-28 14:37:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3174', '2019-04-28 14:37:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '5', null);
INSERT INTO `sys_log` VALUES ('3175', '2019-04-28 14:37:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3176', '2019-04-28 14:37:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3177', '2019-04-28 14:37:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3178', '2019-04-28 14:37:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3179', '2019-04-28 14:37:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3180', '2019-04-28 14:37:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3181', '2019-04-28 14:37:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '4', null);
INSERT INTO `sys_log` VALUES ('3182', '2019-04-28 14:37:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '2', null);
INSERT INTO `sys_log` VALUES ('3183', '2019-04-28 14:37:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleById()', '文章', null, '根据id获取文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3184', '2019-04-28 14:37:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', null, '获取所有文章分类', null, '2', null);
INSERT INTO `sys_log` VALUES ('3185', '2019-04-28 14:37:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', null, '获取所有标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3186', '2019-04-28 14:57:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UploadController.upload()', '文件上传', null, '文件上传', null, '6', null);
INSERT INTO `sys_log` VALUES ('3187', '2019-04-28 14:57:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.saveArticle()', '文章', null, '发布文章', null, '19', null);
INSERT INTO `sys_log` VALUES ('3188', '2019-04-28 14:57:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '4', null);
INSERT INTO `sys_log` VALUES ('3189', '2019-04-28 14:57:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '2', null);
INSERT INTO `sys_log` VALUES ('3190', '2019-04-28 14:57:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleById()', '文章', null, '根据id获取文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3191', '2019-04-28 14:57:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', null, '获取所有标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3192', '2019-04-28 14:57:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', null, '获取所有文章分类', null, '3', null);
INSERT INTO `sys_log` VALUES ('3193', '2019-04-28 14:58:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3194', '2019-04-28 14:58:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3195', '2019-04-28 14:58:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3196', '2019-04-28 14:58:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3197', '2019-04-28 14:58:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3198', '2019-04-28 14:58:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3199', '2019-04-28 14:58:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3200', '2019-04-28 14:58:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '0', null);
INSERT INTO `sys_log` VALUES ('3201', '2019-04-28 14:58:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3202', '2019-04-28 14:58:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3203', '2019-04-28 14:58:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3204', '2019-04-28 14:58:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3205', '2019-04-28 14:58:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3206', '2019-04-28 14:58:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '2', null);
INSERT INTO `sys_log` VALUES ('3207', '2019-04-28 14:58:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '8', null);
INSERT INTO `sys_log` VALUES ('3208', '2019-04-28 14:58:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3209', '2019-04-28 14:58:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3210', '2019-04-28 14:58:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '0', null);
INSERT INTO `sys_log` VALUES ('3211', '2019-04-28 14:58:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3212', '2019-04-28 14:58:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3213', '2019-04-28 14:58:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3214', '2019-04-28 14:58:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3215', '2019-04-28 14:58:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3216', '2019-04-28 14:58:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3217', '2019-04-28 14:58:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3218', '2019-04-28 14:58:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3219', '2019-04-28 14:58:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3220', '2019-04-28 14:58:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3221', '2019-04-28 14:58:34', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3222', '2019-04-28 14:58:34', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3223', '2019-04-28 14:58:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3224', '2019-04-28 14:58:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3225', '2019-04-28 14:58:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3226', '2019-04-28 14:58:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3227', '2019-04-28 14:58:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3228', '2019-04-28 14:58:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3229', '2019-04-28 14:58:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3230', '2019-04-28 14:58:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3231', '2019-04-28 14:58:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3232', '2019-04-28 14:58:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '0', null);
INSERT INTO `sys_log` VALUES ('3233', '2019-04-28 14:58:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3234', '2019-04-28 14:58:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3235', '2019-04-28 14:58:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3236', '2019-04-28 14:58:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3237', '2019-04-28 14:58:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3238', '2019-04-28 14:58:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '0', null);
INSERT INTO `sys_log` VALUES ('3239', '2019-04-28 14:58:54', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3240', '2019-04-28 14:58:54', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3241', '2019-04-28 14:59:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3242', '2019-04-28 14:59:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3243', '2019-04-28 14:59:05', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3244', '2019-04-28 15:12:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.logout()', '退出', null, '退出', null, '4', null);
INSERT INTO `sys_log` VALUES ('3245', '2019-04-28 15:12:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3246', '2019-04-28 15:12:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3247', '2019-04-28 15:12:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3248', '2019-04-28 15:12:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3249', '2019-04-28 15:12:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3250', '2019-04-28 15:12:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '7', null);
INSERT INTO `sys_log` VALUES ('3251', '2019-04-28 15:12:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '0', null);
INSERT INTO `sys_log` VALUES ('3252', '2019-04-28 15:12:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '0', null);
INSERT INTO `sys_log` VALUES ('3253', '2019-04-28 15:12:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3254', '2019-04-28 15:12:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3255', '2019-04-28 15:12:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3256', '2019-04-28 15:12:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3257', '2019-04-28 15:12:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.logout()', '退出', null, '退出', null, '3', null);
INSERT INTO `sys_log` VALUES ('3258', '2019-04-28 15:12:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3259', '2019-04-28 15:12:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3260', '2019-04-28 15:12:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '0', null);
INSERT INTO `sys_log` VALUES ('3261', '2019-04-28 15:12:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3262', '2019-04-28 15:12:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3263', '2019-04-28 15:12:50', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3264', '2019-04-28 15:12:50', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3265', '2019-04-28 15:12:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3266', '2019-04-28 15:12:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3267', '2019-04-28 15:12:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '0', null);
INSERT INTO `sys_log` VALUES ('3268', '2019-04-28 15:12:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3269', '2019-04-28 15:12:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3270', '2019-04-28 15:12:54', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '5', null);
INSERT INTO `sys_log` VALUES ('3271', '2019-04-28 15:12:54', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '2', null);
INSERT INTO `sys_log` VALUES ('3272', '2019-04-28 15:13:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '5', null);
INSERT INTO `sys_log` VALUES ('3273', '2019-04-28 15:13:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '1', null);
INSERT INTO `sys_log` VALUES ('3274', '2019-04-28 15:13:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '4', null);
INSERT INTO `sys_log` VALUES ('3275', '2019-04-28 15:13:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3276', '2019-04-28 15:13:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.saveCommentAndChangeCounts()', '评论', null, '添加评论，增加评论数', null, '7', null);
INSERT INTO `sys_log` VALUES ('3277', '2019-04-28 15:14:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '0', null);
INSERT INTO `sys_log` VALUES ('3278', '2019-04-28 15:14:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3279', '2019-04-28 15:14:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3280', '2019-04-28 15:14:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3281', '2019-04-28 15:14:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3282', '2019-04-28 15:14:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3283', '2019-04-28 15:14:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '1', null);
INSERT INTO `sys_log` VALUES ('3284', '2019-04-28 15:14:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3285', '2019-04-28 15:14:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3286', '2019-04-28 15:14:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3287', '2019-04-28 15:14:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3288', '2019-04-28 15:14:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3289', '2019-04-28 15:35:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '7', null);
INSERT INTO `sys_log` VALUES ('3290', '2019-04-28 15:35:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '83', null);
INSERT INTO `sys_log` VALUES ('3291', '2019-04-28 15:35:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '66', null);
INSERT INTO `sys_log` VALUES ('3292', '2019-04-28 15:35:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '50', null);
INSERT INTO `sys_log` VALUES ('3293', '2019-04-28 15:35:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '54', null);
INSERT INTO `sys_log` VALUES ('3294', '2019-04-28 15:35:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '120', null);
INSERT INTO `sys_log` VALUES ('3295', '2019-04-28 15:39:54', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.logout()', '退出', null, '退出', null, '11', null);
INSERT INTO `sys_log` VALUES ('3296', '2019-04-28 15:39:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '21', null);
INSERT INTO `sys_log` VALUES ('3297', '2019-04-28 15:39:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '1', null);
INSERT INTO `sys_log` VALUES ('3298', '2019-04-28 15:39:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3299', '2019-04-28 15:39:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3300', '2019-04-28 15:39:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3301', '2019-04-28 15:39:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3302', '2019-04-28 15:39:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3303', '2019-04-28 15:40:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '32', null);
INSERT INTO `sys_log` VALUES ('3304', '2019-04-28 15:40:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '15', null);
INSERT INTO `sys_log` VALUES ('3305', '2019-04-28 15:42:18', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3306', '2019-04-28 15:42:18', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3307', '2019-04-28 15:42:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3308', '2019-04-28 15:42:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '10', null);
INSERT INTO `sys_log` VALUES ('3309', '2019-04-28 15:42:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3310', '2019-04-28 15:42:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '7', null);
INSERT INTO `sys_log` VALUES ('3311', '2019-04-28 15:42:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '5', null);
INSERT INTO `sys_log` VALUES ('3312', '2019-04-28 15:42:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3313', '2019-04-28 15:42:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3314', '2019-04-28 15:42:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3315', '2019-04-28 15:42:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3316', '2019-04-28 15:42:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3317', '2019-04-28 15:42:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '5', null);
INSERT INTO `sys_log` VALUES ('3318', '2019-04-28 15:42:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3319', '2019-04-28 15:43:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3320', '2019-04-28 15:43:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3321', '2019-04-28 15:43:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3322', '2019-04-28 15:43:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3323', '2019-04-28 15:47:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3324', '2019-04-28 15:47:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '3', null);
INSERT INTO `sys_log` VALUES ('3325', '2019-04-28 15:47:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '5', null);
INSERT INTO `sys_log` VALUES ('3326', '2019-04-28 15:47:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '2', null);
INSERT INTO `sys_log` VALUES ('3327', '2019-04-28 15:48:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.logout()', '退出', null, '退出', null, '4', null);
INSERT INTO `sys_log` VALUES ('3328', '2019-04-28 15:48:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3329', '2019-04-28 15:48:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3330', '2019-04-28 15:48:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3331', '2019-04-28 15:48:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3332', '2019-04-28 15:48:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3333', '2019-04-28 15:48:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '5', null);
INSERT INTO `sys_log` VALUES ('3334', '2019-04-28 15:48:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '2', null);
INSERT INTO `sys_log` VALUES ('3335', '2019-04-28 15:48:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '4', null);
INSERT INTO `sys_log` VALUES ('3336', '2019-04-28 15:48:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3337', '2019-04-28 15:49:05', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3338', '2019-04-28 15:49:05', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3339', '2019-04-28 15:49:05', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3340', '2019-04-28 15:49:05', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '4', null);
INSERT INTO `sys_log` VALUES ('3341', '2019-04-28 15:49:05', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3342', '2019-04-28 15:49:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '4', null);
INSERT INTO `sys_log` VALUES ('3343', '2019-04-28 15:49:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3344', '2019-04-28 15:53:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3345', '2019-04-28 15:53:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3346', '2019-04-28 15:53:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3347', '2019-04-28 15:53:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3348', '2019-04-28 15:53:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '7', null);
INSERT INTO `sys_log` VALUES ('3349', '2019-04-28 15:56:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3350', '2019-04-28 15:56:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3351', '2019-04-28 15:56:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3352', '2019-04-28 15:56:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3353', '2019-04-28 15:56:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3354', '2019-04-28 15:56:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3355', '2019-04-28 15:56:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3356', '2019-04-28 15:58:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3357', '2019-04-28 15:58:33', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '3', null);
INSERT INTO `sys_log` VALUES ('3358', '2019-04-28 15:58:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3359', '2019-04-28 15:58:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3360', '2019-04-28 15:58:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3361', '2019-04-28 15:58:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3362', '2019-04-28 15:58:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3363', '2019-04-28 15:58:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3364', '2019-04-28 15:58:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3365', '2019-04-28 15:58:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3366', '2019-04-28 15:58:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3367', '2019-04-28 15:58:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3368', '2019-04-28 15:58:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3369', '2019-04-28 15:58:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '8', null);
INSERT INTO `sys_log` VALUES ('3370', '2019-04-28 15:58:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3371', '2019-04-28 15:58:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3372', '2019-04-28 15:58:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.getTagDetail()', '标签', null, '根据id获取详细标签，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3373', '2019-04-28 15:58:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3374', '2019-04-28 15:59:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3375', '2019-04-28 15:59:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3376', '2019-04-28 15:59:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3377', '2019-04-28 15:59:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3378', '2019-04-28 15:59:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3379', '2019-04-28 15:59:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3380', '2019-04-28 15:59:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3381', '2019-04-28 15:59:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3382', '2019-04-28 15:59:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3383', '2019-04-28 15:59:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3384', '2019-04-28 15:59:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3385', '2019-04-28 15:59:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '9', null);
INSERT INTO `sys_log` VALUES ('3386', '2019-04-28 15:59:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '1', null);
INSERT INTO `sys_log` VALUES ('3387', '2019-04-28 15:59:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3388', '2019-04-28 15:59:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3389', '2019-04-28 15:59:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3390', '2019-04-28 15:59:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3391', '2019-04-28 15:59:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3392', '2019-04-28 15:59:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3393', '2019-04-28 15:59:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3394', '2019-04-28 15:59:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3395', '2019-04-28 15:59:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3396', '2019-04-28 15:59:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3397', '2019-04-28 15:59:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3398', '2019-04-28 15:59:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3399', '2019-04-28 15:59:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3400', '2019-04-28 15:59:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3401', '2019-04-28 15:59:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3402', '2019-04-28 15:59:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3403', '2019-04-28 15:59:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3404', '2019-04-28 15:59:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3405', '2019-04-28 15:59:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3406', '2019-04-28 15:59:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3407', '2019-04-28 15:59:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3408', '2019-04-28 15:59:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3409', '2019-04-28 15:59:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', null, '获取所有标签', null, '6', null);
INSERT INTO `sys_log` VALUES ('3410', '2019-04-28 15:59:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', null, '获取所有文章分类', null, '4', null);
INSERT INTO `sys_log` VALUES ('3411', '2019-04-28 16:06:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3412', '2019-04-28 16:06:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3413', '2019-04-28 16:06:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3414', '2019-04-28 16:06:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3415', '2019-04-28 16:06:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3416', '2019-04-28 16:12:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3417', '2019-04-28 16:16:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '6', null);
INSERT INTO `sys_log` VALUES ('3418', '2019-04-28 16:16:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3419', '2019-04-28 16:16:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3420', '2019-04-28 16:16:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3421', '2019-04-28 16:16:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3422', '2019-04-28 16:16:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3423', '2019-04-28 16:16:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3424', '2019-04-28 16:16:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '4', null);
INSERT INTO `sys_log` VALUES ('3425', '2019-04-28 16:16:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '2', null);
INSERT INTO `sys_log` VALUES ('3426', '2019-04-28 16:17:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3427', '2019-04-28 16:17:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3428', '2019-04-28 16:31:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '2', null);
INSERT INTO `sys_log` VALUES ('3429', '2019-04-28 16:31:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3430', '2019-04-28 16:31:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '4', null);
INSERT INTO `sys_log` VALUES ('3431', '2019-04-28 16:31:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3432', '2019-04-28 16:33:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', null, '获取所有文章分类', null, '2', null);
INSERT INTO `sys_log` VALUES ('3433', '2019-04-28 16:33:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', null, '获取所有标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3434', '2019-04-28 16:33:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3435', '2019-04-28 16:33:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3436', '2019-04-28 16:33:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3437', '2019-04-28 16:33:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3438', '2019-04-28 16:33:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3439', '2019-04-28 16:40:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3440', '2019-04-28 16:40:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3441', '2019-04-28 16:47:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3442', '2019-04-28 16:47:13', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3443', '2019-04-28 16:47:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3444', '2019-04-28 16:47:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3445', '2019-04-28 16:47:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3446', '2019-04-28 16:47:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3447', '2019-04-29 10:13:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '28', null);
INSERT INTO `sys_log` VALUES ('3448', '2019-04-29 10:13:49', '127.0.0.1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '56', null);
INSERT INTO `sys_log` VALUES ('3449', '2019-04-29 10:13:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '55', null);
INSERT INTO `sys_log` VALUES ('3450', '2019-04-29 10:13:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '68', null);
INSERT INTO `sys_log` VALUES ('3451', '2019-04-29 10:13:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '69', null);
INSERT INTO `sys_log` VALUES ('3452', '2019-04-29 10:13:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '134', null);
INSERT INTO `sys_log` VALUES ('3453', '2019-04-29 10:15:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '5', null);
INSERT INTO `sys_log` VALUES ('3454', '2019-04-29 10:15:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '12', null);
INSERT INTO `sys_log` VALUES ('3455', '2019-04-29 10:48:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '165', null);
INSERT INTO `sys_log` VALUES ('3456', '2019-04-29 10:48:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '162', null);
INSERT INTO `sys_log` VALUES ('3457', '2019-04-29 10:48:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '12', null);
INSERT INTO `sys_log` VALUES ('3458', '2019-04-29 10:48:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '15', null);
INSERT INTO `sys_log` VALUES ('3459', '2019-04-29 10:49:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3460', '2019-04-29 10:49:14', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '7', null);
INSERT INTO `sys_log` VALUES ('3461', '2019-04-29 11:01:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '162', null);
INSERT INTO `sys_log` VALUES ('3462', '2019-04-29 11:01:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '162', null);
INSERT INTO `sys_log` VALUES ('3463', '2019-04-29 11:01:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '7', null);
INSERT INTO `sys_log` VALUES ('3464', '2019-04-29 11:01:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '136', null);
INSERT INTO `sys_log` VALUES ('3465', '2019-04-29 11:02:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '40', null);
INSERT INTO `sys_log` VALUES ('3466', '2019-04-29 11:02:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '36', null);
INSERT INTO `sys_log` VALUES ('3467', '2019-04-29 11:10:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '317', null);
INSERT INTO `sys_log` VALUES ('3468', '2019-04-29 11:10:52', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '5', null);
INSERT INTO `sys_log` VALUES ('3469', '2019-04-29 11:10:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.saveComment()', '留言', null, '添加留言', null, '14', null);
INSERT INTO `sys_log` VALUES ('3470', '2019-04-29 11:11:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '22', null);
INSERT INTO `sys_log` VALUES ('3471', '2019-04-29 11:11:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '21', null);
INSERT INTO `sys_log` VALUES ('3472', '2019-04-29 11:11:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '39', null);
INSERT INTO `sys_log` VALUES ('3473', '2019-04-29 11:11:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '25', null);
INSERT INTO `sys_log` VALUES ('3474', '2019-04-29 11:11:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '49', null);
INSERT INTO `sys_log` VALUES ('3475', '2019-04-29 11:12:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.saveComment()', '留言', null, '添加留言', null, '7', null);
INSERT INTO `sys_log` VALUES ('3476', '2019-04-29 11:17:18', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '3', null);
INSERT INTO `sys_log` VALUES ('3477', '2019-04-29 11:17:18', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '11', null);
INSERT INTO `sys_log` VALUES ('3478', '2019-04-29 11:17:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '2', null);
INSERT INTO `sys_log` VALUES ('3479', '2019-04-29 11:17:23', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '7', null);
INSERT INTO `sys_log` VALUES ('3480', '2019-04-29 11:17:24', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3481', '2019-04-29 11:17:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '16', null);
INSERT INTO `sys_log` VALUES ('3482', '2019-04-29 11:17:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '14', null);
INSERT INTO `sys_log` VALUES ('3483', '2019-04-29 11:17:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3484', '2019-04-29 11:17:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3485', '2019-04-29 11:17:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '4', null);
INSERT INTO `sys_log` VALUES ('3486', '2019-04-29 11:17:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3487', '2019-04-29 11:17:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3488', '2019-04-29 11:17:35', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '2', null);
INSERT INTO `sys_log` VALUES ('3489', '2019-04-29 11:17:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '4', null);
INSERT INTO `sys_log` VALUES ('3490', '2019-04-29 11:17:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '2', null);
INSERT INTO `sys_log` VALUES ('3491', '2019-04-29 11:17:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3492', '2019-04-29 11:17:39', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '3', null);
INSERT INTO `sys_log` VALUES ('3493', '2019-04-29 11:17:41', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3494', '2019-04-29 11:17:41', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3495', '2019-04-29 11:17:41', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3496', '2019-04-29 11:17:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '5', null);
INSERT INTO `sys_log` VALUES ('3497', '2019-04-29 11:17:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3498', '2019-04-29 11:17:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3499', '2019-04-29 11:17:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '3', null);
INSERT INTO `sys_log` VALUES ('3500', '2019-04-29 11:17:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3501', '2019-04-29 11:17:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3502', '2019-04-29 11:17:50', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '6', null);
INSERT INTO `sys_log` VALUES ('3503', '2019-04-29 11:17:50', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3504', '2019-04-29 11:24:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.saveCommentAndChangeCounts()', '评论', null, '添加评论，增加评论数', null, '16', null);
INSERT INTO `sys_log` VALUES ('3505', '2019-04-29 11:24:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.saveCommentAndChangeCounts()', '评论', null, '添加评论，增加评论数', null, '8', null);
INSERT INTO `sys_log` VALUES ('3506', '2019-04-29 11:39:24', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '1', null);
INSERT INTO `sys_log` VALUES ('3507', '2019-04-29 11:40:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '1', null);
INSERT INTO `sys_log` VALUES ('3508', '2019-04-29 11:42:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '6', null);
INSERT INTO `sys_log` VALUES ('3509', '2019-04-29 11:42:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '120', null);
INSERT INTO `sys_log` VALUES ('3510', '2019-04-29 11:45:00', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '5', null);
INSERT INTO `sys_log` VALUES ('3511', '2019-04-29 11:45:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '1', null);
INSERT INTO `sys_log` VALUES ('3512', '2019-04-29 11:45:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '2', null);
INSERT INTO `sys_log` VALUES ('3513', '2019-04-29 11:45:15', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '33', null);
INSERT INTO `sys_log` VALUES ('3514', '2019-04-29 11:45:15', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '33', null);
INSERT INTO `sys_log` VALUES ('3515', '2019-04-29 11:45:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '4', null);
INSERT INTO `sys_log` VALUES ('3516', '2019-04-29 11:45:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '36', null);
INSERT INTO `sys_log` VALUES ('3517', '2019-04-29 11:45:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3518', '2019-04-29 11:45:18', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '32', null);
INSERT INTO `sys_log` VALUES ('3519', '2019-04-29 11:45:18', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '19', null);
INSERT INTO `sys_log` VALUES ('3520', '2019-04-29 11:45:24', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3521', '2019-04-29 11:45:24', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '2', null);
INSERT INTO `sys_log` VALUES ('3522', '2019-04-29 11:45:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '6', null);
INSERT INTO `sys_log` VALUES ('3523', '2019-04-29 11:45:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '3', null);
INSERT INTO `sys_log` VALUES ('3524', '2019-04-29 11:45:55', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '2', null);
INSERT INTO `sys_log` VALUES ('3525', '2019-04-29 11:46:24', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '1', null);
INSERT INTO `sys_log` VALUES ('3526', '2019-04-29 11:46:24', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '2', null);
INSERT INTO `sys_log` VALUES ('3527', '2019-04-29 11:46:54', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '3', null);
INSERT INTO `sys_log` VALUES ('3528', '2019-04-29 11:47:54', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3529', '2019-04-29 11:47:54', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3530', '2019-04-29 11:47:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '2', null);
INSERT INTO `sys_log` VALUES ('3531', '2019-04-29 11:48:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3532', '2019-04-29 11:48:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3533', '2019-04-29 11:48:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3534', '2019-04-29 11:48:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3535', '2019-04-29 11:48:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '5', null);
INSERT INTO `sys_log` VALUES ('3536', '2019-04-29 11:48:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3537', '2019-04-29 11:48:24', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '1', null);
INSERT INTO `sys_log` VALUES ('3538', '2019-04-29 11:48:24', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '5', null);
INSERT INTO `sys_log` VALUES ('3539', '2019-04-29 11:48:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3540', '2019-04-29 13:57:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '3', null);
INSERT INTO `sys_log` VALUES ('3541', '2019-04-29 13:57:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '2', null);
INSERT INTO `sys_log` VALUES ('3542', '2019-04-29 13:57:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '1', null);
INSERT INTO `sys_log` VALUES ('3543', '2019-04-29 13:57:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorys()', '文章分类', null, '获取所有文章分类', null, '4', null);
INSERT INTO `sys_log` VALUES ('3544', '2019-04-29 13:57:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listTags()', '标签', null, '获取所有标签', null, '5', null);
INSERT INTO `sys_log` VALUES ('3545', '2019-04-29 13:57:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3546', '2019-04-29 13:57:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '11', null);
INSERT INTO `sys_log` VALUES ('3547', '2019-04-29 13:57:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3548', '2019-04-29 13:57:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '10', null);
INSERT INTO `sys_log` VALUES ('3549', '2019-04-29 13:57:45', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '8', null);
INSERT INTO `sys_log` VALUES ('3550', '2019-04-29 13:57:46', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '1', null);
INSERT INTO `sys_log` VALUES ('3551', '2019-04-29 14:07:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '12', null);
INSERT INTO `sys_log` VALUES ('3552', '2019-04-29 14:07:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '1', null);
INSERT INTO `sys_log` VALUES ('3553', '2019-04-29 14:09:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '2', null);
INSERT INTO `sys_log` VALUES ('3554', '2019-04-29 14:09:10', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '3', null);
INSERT INTO `sys_log` VALUES ('3555', '2019-04-29 14:10:44', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '10', null);
INSERT INTO `sys_log` VALUES ('3556', '2019-04-29 14:12:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '3', null);
INSERT INTO `sys_log` VALUES ('3557', '2019-04-29 14:12:37', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '3', null);
INSERT INTO `sys_log` VALUES ('3558', '2019-04-29 14:12:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '2', null);
INSERT INTO `sys_log` VALUES ('3559', '2019-04-29 14:13:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '2', null);
INSERT INTO `sys_log` VALUES ('3560', '2019-04-29 14:14:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '2', null);
INSERT INTO `sys_log` VALUES ('3561', '2019-04-29 14:15:07', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '2', null);
INSERT INTO `sys_log` VALUES ('3562', '2019-04-29 14:15:24', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3563', '2019-04-29 14:15:24', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '4', null);
INSERT INTO `sys_log` VALUES ('3564', '2019-04-29 14:15:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '1', null);
INSERT INTO `sys_log` VALUES ('3565', '2019-04-29 14:15:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3566', '2019-04-29 14:15:26', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3567', '2019-04-29 14:15:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '6', null);
INSERT INTO `sys_log` VALUES ('3568', '2019-04-29 14:15:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3569', '2019-04-29 14:15:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3570', '2019-04-29 14:15:30', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3571', '2019-04-29 14:15:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.getCategoryDetail()', '文章分类', null, '根据id获取详细文章分类，文章数', null, '2', null);
INSERT INTO `sys_log` VALUES ('3572', '2019-04-29 14:15:31', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3573', '2019-04-29 14:15:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '6', null);
INSERT INTO `sys_log` VALUES ('3574', '2019-04-29 14:15:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '2', null);
INSERT INTO `sys_log` VALUES ('3575', '2019-04-29 14:15:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '25', null);
INSERT INTO `sys_log` VALUES ('3576', '2019-04-29 14:15:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '2', null);
INSERT INTO `sys_log` VALUES ('3577', '2019-04-29 14:15:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '4', null);
INSERT INTO `sys_log` VALUES ('3578', '2019-04-29 14:15:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.listCommentsByArticle()', '评论', null, '根据文章获取评论', null, '1', null);
INSERT INTO `sys_log` VALUES ('3579', '2019-04-29 14:15:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.saveCommentAndChangeCounts()', '评论', null, '添加评论，增加评论数', null, '14', null);
INSERT INTO `sys_log` VALUES ('3580', '2019-04-29 14:16:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.saveCommentAndChangeCounts()', '评论', null, '添加评论，增加评论数', null, '7', null);
INSERT INTO `sys_log` VALUES ('3581', '2019-04-29 14:16:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CommentController.saveCommentAndChangeCounts()', '评论', null, '添加评论，增加评论数', null, '6', null);
INSERT INTO `sys_log` VALUES ('3582', '2019-04-29 14:18:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '5', null);
INSERT INTO `sys_log` VALUES ('3583', '2019-04-29 14:18:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '1', null);
INSERT INTO `sys_log` VALUES ('3584', '2019-04-29 14:18:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '2', null);
INSERT INTO `sys_log` VALUES ('3585', '2019-04-29 14:20:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '1', null);
INSERT INTO `sys_log` VALUES ('3586', '2019-04-29 14:20:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '2', null);
INSERT INTO `sys_log` VALUES ('3587', '2019-04-29 14:22:00', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '1', null);
INSERT INTO `sys_log` VALUES ('3588', '2019-04-29 14:22:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '1', null);
INSERT INTO `sys_log` VALUES ('3589', '2019-04-29 14:22:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3590', '2019-04-29 14:22:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3591', '2019-04-29 14:22:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3592', '2019-04-29 14:22:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3593', '2019-04-29 14:22:04', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3594', '2019-04-29 14:22:15', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3595', '2019-04-29 14:22:15', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3596', '2019-04-29 14:22:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3597', '2019-04-29 14:22:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3598', '2019-04-29 14:22:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3599', '2019-04-29 14:22:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3600', '2019-04-29 14:22:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3601', '2019-04-29 14:22:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3602', '2019-04-29 14:22:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3603', '2019-04-29 14:23:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '0', null);
INSERT INTO `sys_log` VALUES ('3604', '2019-04-29 14:24:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '0', null);
INSERT INTO `sys_log` VALUES ('3605', '2019-04-29 14:24:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3606', '2019-04-29 14:24:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3607', '2019-04-29 14:24:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3608', '2019-04-29 14:24:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3609', '2019-04-29 14:24:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '0', null);
INSERT INTO `sys_log` VALUES ('3610', '2019-04-29 14:24:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3611', '2019-04-29 14:24:08', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3612', '2019-04-29 14:24:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3613', '2019-04-29 14:24:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3614', '2019-04-29 14:24:24', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '0', null);
INSERT INTO `sys_log` VALUES ('3615', '2019-04-29 14:24:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '1', null);
INSERT INTO `sys_log` VALUES ('3616', '2019-04-29 14:24:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3617', '2019-04-29 14:24:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3618', '2019-04-29 14:24:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '5', null);
INSERT INTO `sys_log` VALUES ('3619', '2019-04-29 14:24:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3620', '2019-04-29 14:24:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3621', '2019-04-29 14:24:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3622', '2019-04-29 14:24:29', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '1', null);
INSERT INTO `sys_log` VALUES ('3623', '2019-04-29 14:24:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3624', '2019-04-29 14:24:32', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3625', '2019-04-29 14:24:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '2', null);
INSERT INTO `sys_log` VALUES ('3626', '2019-04-29 14:24:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '2', null);
INSERT INTO `sys_log` VALUES ('3627', '2019-04-29 14:26:25', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '2', null);
INSERT INTO `sys_log` VALUES ('3628', '2019-04-29 14:31:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '2', null);
INSERT INTO `sys_log` VALUES ('3629', '2019-04-29 14:32:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.saveComment()', '留言', null, '添加留言', null, '7', null);
INSERT INTO `sys_log` VALUES ('3630', '2019-04-29 14:32:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.UserController.getCurrentUser()', '用户', null, '获取当前登录用户', null, '0', null);
INSERT INTO `sys_log` VALUES ('3631', '2019-04-29 14:32:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.MessageController.listComments()', '留言', null, '获取所有留言', null, '2', null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(64) DEFAULT NULL,
  `admin` bit(1) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `mobile_phone_number` varchar(20) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_awpog86ljqwb89aqa1c5gvdrd` (`account`),
  UNIQUE KEY `UK_ahtq5ew3v0kt1n7hf1sgp7p8l` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'shimh', '', '/user/admin.png', '2018-01-22 17:14:49', '\0', '919431514@qq.com', null, '18396816462', '史明辉', 'c237910910ffa1f4827bf7fe1831ce43', 'e4153a582cbc45c3a199998b506dab28', 'normal');
INSERT INTO `sys_user` VALUES ('15', 'shimh2', '\0', '/user/user_6.png', null, '\0', null, null, null, 'shimh2', '0df7246bbb5b1bf138edd17f7b64b33b', '480e1a68cbc7e05ff49f39d2b5222d0b', 'normal');
INSERT INTO `sys_user` VALUES ('16', 'user', '', '/static/user/user_1.png', null, '\0', null, null, null, '新用户', '3c16655aaeef89e874a283cb4ea14b52', '78e34de7edc86fd82fa9fb1d78f85094', 'normal');
