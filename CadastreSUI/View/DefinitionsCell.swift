import Foundation
import SwiftUI
struct DefinitionsCell: View {
    var title: String
    var subTitle: String
    var dateInfo: String
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            Text(title)
                .font(.headline)
                .foregroundColor(.blue)
            
            Text(subTitle)
                .font(.subheadline)
            
            Text(dateInfo)
                .font(.caption)
                .foregroundColor(.gray)
        }
        .padding()
    }
}

struct DefinitionsCell_Previews: PreviewProvider {
    static var previews: some View {
        return DefinitionsCell(title: "Абрис", subTitle: "В [кадастровой деятельности 343] &mdash; сделанный от руки внемасштабный, но с соблюдением пропорций, чертеж с обозначением в нем данных, необходимых для составления поэтажного плана здания".stringByDecodingHTMLEntities, dateInfo: "2023-09-04 11:42:17")
    }
}
