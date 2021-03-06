//
//  AlamofireImageKit.swift
//  AlamofireImageKit
//
//  Created by Rz Rasel on 2021-03-06
//

import Foundation
import AlamofireImage

extension UIImageView {
    public func onLoadImage(from urlLocation: String) {
        if urlLocation.isEmpty == true {
            return
        }
        let imageCache = AutoPurgingImageCache()
        //
        let name = urlLocation
        guard let url = URL(string: name) else {
            return
        }
        let urlRequest = URLRequest(url: url)
        let imgFromCache = imageCache.image( for: urlRequest, withIdentifier: name)
        if imgFromCache != nil{
            self.image = imgFromCache
        } else {
            self.af_setImage(
                withURL: url,
                placeholderImage: nil,
                filter: AspectRatioScaledToWidthFilter(width: self.frame.size.width),
                completion: { (rs) in
                    imageCache.add(self.image!, for: urlRequest, withIdentifier: name)
                }
            )
        }
    }
    private struct AspectRatioScaledToWidthFilter: ImageFilter {
        /// The size of the filter.
        public let width: CGFloat
        /**
         Initializes the `AspectRatioScaledToWidthFilter` instance with the given width.
         - parameter width: The width.
         - returns: The new `AspectRatioScaledToWidthFilter` instance.
         */
        public init(width: CGFloat) {
            self.width = width
        }
        
        /// The filter closure used to create the modified representation of the given image.
        public var filter: (Image) -> Image {
            return { image in
                return image.af_imageScaled(to: CGSize(width: self.width, height: self.width * image.size.height / image.size.width))
            }
        }
    }
}
