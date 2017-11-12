# PGGdrop-down-menu-PGGDropdownMenu
鹏哥哥下拉菜单 封装良好 线程安全 体积小 方便扩展

初始化方法
/**
 *  构建方法
 *  param array   标题
 */
- (instancetype)initWithFrame:(CGRect)frame withTitleArray:(NSArray<NSString *> *)array;
协议方法
/**
 *点击选中协议方法
 @param DropView <#DropView description#>
 @param index <#index description#>
 */
- (void)PGGDropView:(PGGDropView *)DropView didSelectAtIndex:(NSInteger )index;
/**
 *  移除
 */
- (void)dismiss;

/**
 *  添加之后做动画
 */
- (void)beginAnimation;
