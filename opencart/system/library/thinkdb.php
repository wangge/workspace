<?php
namespace Home;
use Think\Model;
require_once ('function.inc.php');
defined('LIB_PATH')     or define('LIB_PATH', ''); // 系统核心类库目录
defined('APP_PATH')     or define('APP_PATH',       dirname($_SERVER['SCRIPT_FILENAME']).'/');
define('IS_CGI',(0 === strpos(PHP_SAPI,'cgi') || false !== strpos(PHP_SAPI,'fcgi')) ? 1 : 0 );
define('IS_WIN',strstr(PHP_OS, 'WIN') ? 1 : 0 );
define('IS_CLI',PHP_SAPI=='cli'? 1   :   0);
defined('TEMP_PATH') or define('TEMP_PATH', 'Temp/'); // 应用缓存目录
defined('APP_DEBUG') or define('APP_DEBUG', false); // 应用缓存目录
defined('DATA_PATH')    or define('DATA_PATH', 'Data/'); // 应用数据目录
defined('CONF_PARSE')   or define('CONF_PARSE',     '');    // 配置文件解析方法
define('MEMORY_LIMIT_ON',function_exists('memory_get_usage'));
const EXT               =   '.class.php';
class Thinkdb
{
    private $ob;
    private $db;
    public function __construct($registry) {
        $this->ob = $registry->get('config');
        spl_autoload_register(function ($class) {

            // 检查是否存在映射
            if(false !== strpos($class,'\\')){
                $name           =   strstr($class, '\\', true);
                if(in_array($name,array('Think','Org','Behavior','Com','Vendor')) || is_dir(LIB_PATH.$name)){
                    // Library目录下面的命名空间自动定位
                    $path       =   LIB_PATH;
                }else{
                    // 检测自定义命名空间 否则就以模块为命名空间
                    $namespace  =   C('AUTOLOAD_NAMESPACE');
                    $path       =   isset($namespace[$name])? dirname($namespace[$name]).'/' : APP_PATH;
                }
                $filename       =   $path . str_replace('\\', '/', $class) . EXT;
                if(is_file($filename)) {
                    // Win环境下面严格区分大小写
                    if (IS_WIN && false === strpos(str_replace('/', '\\', realpath($filename)), $class . EXT)){
                        return ;
                    }
                    include $filename;
                }
            }elseif (!C('APP_USE_NAMESPACE')) {
                // 自动加载的类库层
                foreach(explode(',',C('APP_AUTOLOAD_LAYER')) as $layer){
                    if(substr($class,-strlen($layer))==$layer){
                        if(require_cache(MODULE_PATH.$layer.'/'.$class.EXT)) {
                            return ;
                        }
                    }
                }
                // 根据自动加载路径设置进行尝试搜索
                foreach (explode(',',C('APP_AUTOLOAD_PATH')) as $path){
                    if(import($path.'.'.$class))
                        // 如果加载类成功则返回
                        return ;
                }
            }
        });
        $this->db();
    }
    private function get($key){
        return $this->ob->get($key);
    }
    private function config()
    {
        return  array(
            /* 数据库设置 */
            'DB_TYPE'               => $this->get('DB_DRIVER'),     // 数据库类型
            'DB_HOST'               => $this->get('DB_HOSTNAME'), // 服务器地址
            'DB_NAME'               => $this->get('DB_DATABASE'), // 数据库名
            'DB_USER'               => $this->get('DB_USERNAME'), // 用户名
            'DB_PWD'                => $this->get('DB_PASSWORD'), // 密码
            'DB_PORT'               => 3306, // 端口
            'DB_PREFIX'             => $this->get('DB_PREFIX'), // 数据库表前缀
            'DB_CHARSET'            => 'utf8', // 字符集
            'DB_DEBUG'              =>  TRUE, // 数据库调试模式 开启后可以记录SQL日志
            'DB_FIELDS_CACHE'       =>  true,        // 启用字段缓存
            'DB_DEPLOY_TYPE'        =>  0, // 数据库部署方式:0 集中式(单一服务器),1 分布式(主从服务器)
            'DB_RW_SEPARATE'        =>  false,       // 数据库读写是否分离 主从式有效
            'DB_MASTER_NUM'         =>  1, // 读写分离后 主服务器数量
            'DB_SLAVE_NO'           =>  '', // 指定从服务器序号

            /* 数据缓存设置 */
            'DATA_CACHE_TIME'       =>  0,      // 数据缓存有效期 0表示永久缓存
            'DATA_CACHE_COMPRESS'   =>  false,   // 数据缓存是否压缩缓存
            'DATA_CACHE_CHECK'      =>  false,   // 数据缓存是否校验缓存
            'DATA_CACHE_PREFIX'     => $this->get('DB_PREFIX'),     // 缓存前缀
            'DATA_CACHE_TYPE'       =>  'File',  // 数据缓存类型,支持:File|Db|Apc|Memcache|Shmop|Sqlite|Xcache|Apachenote|Eaccelerator
            'DATA_CACHE_PATH'       =>  TEMP_PATH,// 缓存路径设置 (仅对File方式缓存有效)
            'DATA_CACHE_KEY'        =>  '',	// 缓存文件KEY (仅对File方式缓存有效)
            'DATA_CACHE_SUBDIR'     =>  false,    // 使用子目录缓存 (自动根据缓存标识的哈希创建子目录)
            'DATA_PATH_LEVEL'       =>  1,        // 子目录缓存级别
        );
    }
    private function db(){
        foreach($this->config() as $key=>$value) C($key,$value);
    }
    public function model($name)
    {
        //include('Think/Model.class.php');
        $class      =   'Think\\Model';
        $this->db = new $class($name);
    }
    public function __call( $name, $arguments )
    {
        $this->db->$name($arguments);
    }

}
?>