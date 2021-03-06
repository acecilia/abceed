import AbceedCore

public final class SubCategoryListViewModel: SubCategoryListViewModelType {
    public let topCategory: TopCategory
    public let subCategories: Property<[AbceedCore.Category]>

    public init(topCategory: TopCategory) {
        self.topCategory = topCategory
        self.subCategories = Property(topCategory.subCategories)
    }
}
