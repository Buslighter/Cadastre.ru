import Foundation
import SwiftUI

struct DefinitionsView: View {
    var definitions: [Datum]
    var body: some View {
            List(definitions, id: \.id) { item in
                DefinitionsCell(title: item.title, subTitle: item.annotation.stringByDecodingHTMLEntities, dateInfo: item.updated)
            }
    }
}
struct DefinitionsView_Previews: PreviewProvider {
    static var previews: some View {
        return DefinitionsView(definitions: [Datum](repeating: Datum(id: "", type: .definition, title: "Абрис", annotation: "В [кадастровой деятельности 343] &mdash; сделанный от руки внемасштабный, но с соблюдением пропорций, чертеж с обозначением в нем данных, необходимых для составления поэтажного плана здания".stringByDecodingHTMLEntities, updated: "2023-09-04 11:42:17", url: "", articleID: "", isSubscriptionRequired: "", image: nil, thumbnail: nil), count: 30))
    }
}
