import AbceedCore
import RxSwift

public final class TopCategoryTabViewModel: TopCategoryTabViewModelType {
    public let state: Property<TopCategoryTabState>

    public init(bookRepository: BookRepository) {

        state = Property(
            initial: .loading,
            then: bookRepository.getAll()
                .optionalizeError()
                .map(TopCategoryTabState.init(response:))
        )

    }
}
