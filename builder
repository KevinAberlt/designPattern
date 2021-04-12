建造者模式：将对象和对象的创建过程解耦
	主要角色：
		Product:一个具体的产品对象
		Builder：创建一个Product对象的各个部件指定的接口或抽象类
		ConcreteBuilder：实现接口构建和装配各个部件
		Director：构建一个使用builder对象的接口，主要用于创建一个复杂的对象，主要作用：1、控制对象产品的生产过程 2、隔离了客户与对象的生成过程
    
	StringBuilder 解析：
    StringBuilder 继承了 AbstractStringBuilder 而 AbstractStringBuilder 实现了 Appendable，
    在 Appendable 接口中定义了如下接口：
      Appendable append(CharSequence csq) throws IOException;
      Appendable append(CharSequence csq, int start, int end) throws IOException;
      Appendable append(char c) throws IOException;
    在 AbstractStringBuilder 重写了以上方法
    在 StringBuilder 中使用 AbstractStringBuilder 重写的方法进行调用构造对象
    
    因此，StringBuilder 构造体系中角色如下：
      StringBuilder：指挥者
      AbstractStringBuilder：构造者
      Appendable 抽象的构造者
    
      
